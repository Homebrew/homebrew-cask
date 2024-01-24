cask "guilded" do
  version "1.0.9235285"
  sha256 "ab4471d11be89d33bab43307709b154b83b1342d0c595cf48dd165fd60e94a50"

  url "https://s3-us-west-2.amazonaws.com/www.guilded.gg/AppBuilds/mac/Guilded-#{version}-release.dmg",
      verified: "s3-us-west-2.amazonaws.com/www.guilded.gg/AppBuilds/mac/"
  name "Guilded"
  desc "Group chat platform"
  homepage "https://www.guilded.gg/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/www.guilded.gg/AppBuilds/mac/release-mac.yml"
    strategy :electron_builder do |data|
      data["version"].tr("-release", "")
    end
  end

  app "Guilded.app"

  zap trash: [
    "~/Library/Application Support/Guilded",
    "~/Library/Logs/Guilded",
    "~/Library/Preferences/com.electron.guilded.plist",
    "~/Library/Saved Application State/com.electron.guilded.savedState",
  ]

  caveats do
    requires_rosetta
    <<~EOS
      Please see https://www.guilded.gg/Guilded-Official/channels/b78e9e5f-4750-4466-a269-a8bc08f3e120/forums/489565095 for ARM build support.
    EOS
  end
end
