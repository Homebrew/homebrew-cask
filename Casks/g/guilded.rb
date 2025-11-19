cask "guilded" do
  version "1.0.9329126"
  sha256 "9bc9cf6eba9db14351be4be5cf1f3f1f8f233671645cf5ffa93628d854fc70e6"

  url "https://www.guilded.gg/AppBuilds/mac/Guilded-#{version}-release.dmg"
  name "Guilded"
  desc "Group chat platform"
  homepage "https://www.guilded.gg/"

  livecheck do
    url "https://www.guilded.gg/AppBuilds/mac/release-mac.yml"
    strategy :electron_builder do |yaml|
      yaml["version"]&.sub(/[._-]release.*$/i, "")
    end
  end

  auto_updates true

  app "Guilded.app"

  zap trash: [
    "~/Library/Application Support/Guilded",
    "~/Library/Logs/Guilded",
    "~/Library/Preferences/com.electron.guilded.plist",
    "~/Library/Saved Application State/com.electron.guilded.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
