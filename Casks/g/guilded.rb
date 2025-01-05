cask "guilded" do
  version "1.0.9284034"
  sha256 "d11db4982aadd0f1da60458dc99521aba9638b90cfd82f70de9ad7481d5d84a9"

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
  depends_on macos: ">= :catalina"

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
