cask "spyder" do
  version "5.0.2"
  sha256 "9e81c58c402cf9f726ba244e3e17689a21d5d53df894041bd089b5c0c83d8963"

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
