cask "qlc+" do
  arch arm: "arm64", intel: "x86_64"

  version "5.3.1"
  sha256 arm:   "22c9d520cf14c64a77daeb9e76518f120528cd979c844a97d6c6d6d1be80ef05",
         intel: "5246fcff53f417dbf7579069314d6779c9c7fb5c7d09a4039c67ce81a490b16f"

  on_arm do
    depends_on macos: :ventura
  end
  on_intel do
    depends_on macos: :monterey
  end

  url "https://www.qlcplus.org/downloads/#{version.split("-").first}/QLC+_#{version}_#{arch}.dmg"
  name "Q Light Controller+"
  desc "Control DMX or analogue lighting systems"
  homepage "https://www.qlcplus.org/"

  livecheck do
    url "https://github.com/mcallegari/qlcplus.git"
    regex(/^QLC\+[_-]v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  app "QLC+.app"

  uninstall launchctl: "application.QLC.app.*"

  zap trash: "~/Library/Application Support/QLC+"
end
