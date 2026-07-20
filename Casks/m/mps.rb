cask "mps" do
  arch arm: "macos-aarch64", intel: "macos"

  version "2026.1,261.25134.779"
  sha256 arm:   "e55b4f4b6ebfbc229afa67c30102a077dc7903e0aabf7f4acfed842a482e97e2",
         intel: "04564d1e81a3efee030ec12a2f9c7b25f5a057dd77df0fd6f9ed68c29cec2710"

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
  depends_on :macos

  app "MPS.app"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "mps.wrapper.sh",
                  target:  "mps",
                  content: <<~EOS
                    #!/bin/sh
                    exec '#{appdir}/MPS.app/Contents/MacOS/mps' "$@"
                  EOS

  zap trash: [
    "~/Library/Application Support/MPS#{version.csv.first.major_minor}",
    "~/Library/Caches/MPS#{version.csv.first.major_minor}",
    "~/Library/Logs/MPS#{version.csv.first.major_minor}",
    "~/Library/Preferences/MPS#{version.csv.first.major_minor}",
    "~/MPSSamples.#{version.csv.first.major_minor}",
  ]
end
