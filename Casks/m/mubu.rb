cask "mubu" do
  arch arm: "-arm64"

  version "5.1.0"
  sha256 arm:   "a5bccc81dc1c2fad74ea8a5732e37d281e81f95d58b406c7591e507b14e3d54f",
         intel: "6c893c2d5dcd9a000a28ea113d9ef954af7b7468c5492b780a33b429fab69fa3"

  url "https://mubu-assets.tos-cn-shanghai.volces.com/client/Mubu-#{version}#{arch}.dmg",
      verified: "mubu-assets.tos-cn-shanghai.volces.com/client/"
  name "Mubu"
  desc "Outline note taking and management app"
  homepage "https://mubu.com/"

  livecheck do
    url "https://api2.mubu.com/v3/api/desktop_client/latest_version"
    strategy :json do |json|
      json.dig("data", "mac")
    end
  end

  auto_updates true

  app "幕布.app"

  zap trash: [
    "~/Library/Application Support/幕布",
    "~/Library/Preferences/com.mubu.desktop.plist",
    "~/Library/Saved Application State/com.mubu.desktop.savedState",
  ]
end
