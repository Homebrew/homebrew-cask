cask "mole-widget" do
  version "0.5.3"
  sha256 "8caffcab508ff2948345a3f610578b8cae2e7c2eac619dc56ac1d63bd8fd9080"

  url "https://github.com/bsnkhua/mole-widget/releases/download/v#{version}/MoleWidget.dmg"
  name "Mole Widget"
  desc "Lightweight macOS desktop system monitor widget"
  homepage "https://github.com/bsnkhua/mole-widget"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Mole Widget.app"

  zap trash: "~/Library/Preferences/com.sbezbabnykh.mole-widget.plist"
end
