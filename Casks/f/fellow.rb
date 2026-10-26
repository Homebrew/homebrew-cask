cask "fellow" do
  version "5.7.22"
  sha256 "aa3af9cd481fbe6fe998353f27e5f78e8af028eeb69123a94cc4d0599f990891"

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
