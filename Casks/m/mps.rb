cask "mps" do
  arch arm: "macos-aarch64", intel: "macos"

  version "2025.2,252.23892.529"
  sha256 arm:   "5f1822a639b199ec3c2ca7f2352277bfc1727e4e46976bdab71fabf7fe62a280",
         intel: "7fd49bfac7e9150e2827d7c6b9f1ad24405963b50efa948492e3ec3202b0ac84"

  url "https://download.jetbrains.com/mps/#{version.major_minor}/MPS-#{version.csv.first}-#{arch}.dmg"
  name "JetBrains MPS"
  desc "Create your own domain-specific language"
  homepage "https://www.jetbrains.com/mps/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release"
    strategy :json do |json|
      json["MPS"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "MPS.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/mps.wrapper.sh"
  binary shimscript, target: "mps"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/MPS.app/Contents/MacOS/mps' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/MPS#{version.csv.first.major_minor}",
    "~/Library/Caches/MPS#{version.csv.first.major_minor}",
    "~/Library/Logs/MPS#{version.csv.first.major_minor}",
    "~/Library/Preferences/MPS#{version.csv.first.major_minor}",
    "~/MPSSamples.#{version.csv.first.major_minor}",
  ]
end
