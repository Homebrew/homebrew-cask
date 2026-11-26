cask "mubu" do
  arch arm: "-arm64"

  version "6.2.0"
  sha256 arm:   "0ed2b15d30a1e2ed34abf437a5777df5e6af8c48599b44dcddfabe2423d8c878",
         intel: "b7782893d52422bcdb1f61abccbbbdd77cffa4fb83996bccb248f607a4a5ad69"

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
