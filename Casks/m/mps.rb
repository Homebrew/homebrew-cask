cask "mps" do
  arch arm: "macos-aarch64", intel: "macos"

  version "2025.3,253.28294.432"
  sha256 arm:   "dc79c41ce851448f4862306173914eee1e63e230410ed65356498efd2d5f0444",
         intel: "c216008ca905efd9ab9271df9599ef38ecb66cba2c61482e7a56434ae3eddee6"

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
