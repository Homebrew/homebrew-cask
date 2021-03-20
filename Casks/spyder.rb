cask "spyder" do
  version "4.2.4"
  sha256 "892480495e4e472cec286ed676fcef339092aa5295c2820caeb5cef29301357f"

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
