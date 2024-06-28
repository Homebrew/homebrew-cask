# https://support.talkdesk.com/hc/en-us/articles/13920616167963-Workspace-Desktop-App-for-Talkdesk-CX-Cloud
cask "talkdesk-desktop" do
  version "2.0.1-alpha.1"
  sha256 "16eb1e4708ea74250231404caf18a472624dd67fc907c4f438d65fc0694c63c5"

  url "https://td-infra-prd-us-east-1-s3-atlaselectron.s3.amazonaws.com/talkdesk-#{version}.dmg",
    verified: "td-infra-prd-us-east-1-s3-atlaselectron.s3.amazonaws.com"
  name "Talkdesk Workspace Desktop for MacOS"
  desc "Talkdesk Workspace Desktop app allows you to use Talkdesk CX Cloud as stand-alone software"
  homepage "https://www.mytalkdesk.com/atlas/download"

  livecheck do
    url "https://td-infra-prd-us-east-1-s3-atlaselectron.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  auto_updates true

  app "Talkdesk.app"

  zap trash: [
    "~/Library/Application Support/Talkdesk",
    "~/Library/Application Support/Caches/talkdesk-updater",
    "~/Library/Saved Application State/com.talkdesk.atlas.savedState",
    "~/Library/Preferences/com.talkdesk.atlas.plist",
    "~/Library/Logs/Talkdesk"
  ]
end
