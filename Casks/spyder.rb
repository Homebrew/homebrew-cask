cask "spyder" do
  version "5.3.3"
  sha256 "d5f79908f181469a5ba90fb2572b7f56e1ba95c7f78ea05d4992e08ed68d654a"

  url "https://github.com/spyder-ide/spyder/releases/download/v#{version}/Spyder.dmg",
      verified: "github.com/spyder-ide/spyder/"
  name "Spyder"
  desc "Scientific Python IDE"
  homepage "https://www.spyder-ide.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Spyder.app"
end
