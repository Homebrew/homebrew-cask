cask "spyder" do
  version "5.4.2"
  sha256 "4d5eabd2b385a88d2922e4d61cb10d2847871df11f2aedf274ad8852fdb133f0"

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
