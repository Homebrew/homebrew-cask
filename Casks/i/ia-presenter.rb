cask "ia-presenter" do
  version "1.5.4,15166"
  sha256 "43d3c6f42e6dcc86345fef97d9f6c1f4b420e2f433a09e73d23dd5b448c1d016"

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
