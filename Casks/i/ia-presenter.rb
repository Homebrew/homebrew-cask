cask "ia-presenter" do
  version "2.1.6,21031"
  sha256 "f3660e1665d4610b0357f8340d8cd9ac2dbeaed9cd355c95cb93109638a9fb44"

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
