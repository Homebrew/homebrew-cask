cask "ia-presenter" do
  version "2.1.5,21029"
  sha256 "8b95c5941acdb2d189a8b3ba5d480a4108f254c3b78419e2693a331cb6997fe2"

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
