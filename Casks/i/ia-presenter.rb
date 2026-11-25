cask "ia-presenter" do
  version "2.1.4,21027"
  sha256 "ffccd29ba0ec008c4c1ae9ea304aa4ebdc5292a18107bd9bb058818b8e3b0003"

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
