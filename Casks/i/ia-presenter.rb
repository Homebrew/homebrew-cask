cask "ia-presenter" do
  version "2.0.4,20033"
  sha256 "e71d839950d9234b8815d293f9b96115c465add1547f79c22573b70b41a503b0"

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
    "~/Library/Containers/net.ia.presenter",
  ]
end
