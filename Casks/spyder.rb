cask "spyder" do
  version "4.2.3"
  sha256 "e8b8477002927a8fd293d7d15cc10b0b96bb2d2b24641c56fa6b39d472b8e9a5"

  url "https://github.com/spyder-ide/spyder/releases/download/v#{version}/Spyder.dmg",
      verified: "github.com/spyder-ide/spyder/"
  name "Spyder"
  desc "Scientific Python IDE"
  homepage "https://www.spyder-ide.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Spyder.app"
end
