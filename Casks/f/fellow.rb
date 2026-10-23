cask "fellow" do
  version "5.7.19"
  sha256 "8bd0eb39d945393cef64c4a0f11893d719326c92d9cf158e4d803d91b037b41b"

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

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.fellow.sfl*",
    "~/Library/Application Support/Fellow",
    "~/Library/Logs/Fellow",
    "~/Library/Preferences/com.electron.fellow.plist",
  ]
end
