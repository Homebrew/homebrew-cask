cask "ia-presenter" do
  version "1.1.2-11002"
  sha256 "ce026bfc2155104e68e5eeb9eaa29d0a279e7c5de7771ea55e19ff5a4ea2740e"

  url "https://files.ia.net/presenter/release/iA-Presenter-#{version}.zip"
  name "ia-presenter"
  desc "Create presentation slides from a Markdown document"
  homepage "https://ia.net/presenter"

  livecheck do
    url "https://iapresenter.s3.amazonaws.com/release/updates.xml"
    strategy :sparkle do |item|
      "#{item.short_version}-#{item.version}"
    end
  end

  depends_on macos: ">= :monterey"

  app "iA Presenter.app"

  zap trash: [
    "~/Library/Application Scripts/net.ia.presenter",
    "~/Library/Containers/net.ia.presenter",
  ]
end
