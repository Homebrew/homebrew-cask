cask "fellow" do
  version "5.7.30"
  sha256 "2c0c725d8b2d3c39ec587d36ff6c9d36000543674f97340d5602d3afefad505b"

  url "https://cdn.fellow.app/desktop/#{version}/darwin/stable/universal/Fellow-#{version}-universal.dmg"
  name "Fellow"
  desc "Collaborative meeting agendas, notes, and action items"
  homepage "https://fellow.app/"

  livecheck do
    url "https://fellow.app/desktop/download/darwin/latest/"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :ventura

  app "Fellow.app"

  uninstall quit: "com.electron.fellow"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.fellow.sfl*",
    "~/Library/Application Support/Fellow",
    "~/Library/Logs/Fellow",
    "~/Library/Preferences/com.electron.fellow.plist",
  ]
end
