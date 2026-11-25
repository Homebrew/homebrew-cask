cask "mubu" do
  arch arm: "-arm64"

  version "6.1.1"
  sha256 arm:   "51265e0de31c4019d40adc8d741322155f8a597658561c1c7916f23dfc3ddb9a",
         intel: "ffc819c7f34e3d6346d90dc67d3f7e196ef7170e3093c2df55dc11ca38520464"

  url "https://assets.mubu.com/client/#{version}/Mubu-#{version}#{arch}.dmg"
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
  depends_on :macos

  app "幕布.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mubu.desktop.sfl*",
    "~/Library/Application Support/幕布",
    "~/Library/Preferences/com.mubu.desktop.plist",
    "~/Library/Saved Application State/com.mubu.desktop.savedState",
  ]
end
