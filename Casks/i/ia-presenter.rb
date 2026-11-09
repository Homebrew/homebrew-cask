cask "ia-presenter" do
  version "2.1.3,21026"
  sha256 "22e5beb2734034a954bcb3eda6a6af2e93eb1f1b09843ec3ff65ef3f0f23ca9e"

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
