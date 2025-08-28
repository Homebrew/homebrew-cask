cask "ia-presenter" do
  version "1.5,15039"
  sha256 "74de88205e725c6b37f54f413cd5661b9c7db2d5ae22fb1d8f4b9967610ec665"

  url "https://files.ia.net/presenter/release/iA-Presenter-#{version.csv.first}-#{version.csv.second}.zip"
  name "iA Presenter"
  desc "Create presentation slides from a Markdown document"
  homepage "https://ia.net/presenter"

  livecheck do
    url "https://iapresenter.s3.amazonaws.com/release/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "iA Presenter.app"

  zap trash: [
    "~/Library/Application Scripts/net.ia.presenter",
    "~/Library/Containers/net.ia.presenter",
  ]
end
