cask "ia-presenter" do
  version "2.1,21020"
  sha256 "f85c00c69fe9f073e2079f73a893d52ffbca89848231f42cd46d497c2f11a186"

  url "https://files.ia.net/presenter/release/iA-Presenter-#{version.csv.first}-#{version.csv.second}.zip"
  name "iA Presenter"
  desc "Create presentation slides from a Markdown document"
  homepage "https://ia.net/presenter"

  livecheck do
    url "https://files.ia.net/presenter/release/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "iA Presenter.app"

  zap trash: [
    "~/Library/Application Scripts/net.ia.presenter",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.ia.presenter.sfl*",
    "~/Library/Containers/net.ia.presenter",
  ]
end
