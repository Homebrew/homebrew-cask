cask "ia-presenter" do
  version "1.4.0,14003"
  sha256 "583b9907387860c4597902604c6b6d007fd7148c7901389a69b6c0ad8b25abb1"

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
