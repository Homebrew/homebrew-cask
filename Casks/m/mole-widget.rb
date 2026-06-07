cask "mole-widget" do
  version "0.5.4"
  sha256 "07062aca8399f7586df2c6f6707cdffdac93bfef9b2319da9659f87bda66f80a"

  url "https://github.com/bsnkhua/mole-widget/releases/download/v#{version}/MoleWidget.dmg"
  name "Mole Widget"
  desc "Lightweight macOS desktop system monitor widget"
  homepage "https://github.com/bsnkhua/mole-widget"

  livecheck do
    url "https://github.com/bsnkhua/mole-widget"
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Mole Widget.app"

  zap trash: "~/Library/Preferences/com.sbezbabnykh.mole-widget.plist"
end
