cask "spyder" do
  version "5.1.3"
  sha256 "7784dc2354a0023a038098d37e5e7a11b7f6b081f1db68c768ed193b22883f61"

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
