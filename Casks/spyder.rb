cask "spyder" do
  version "5.4.1"
  sha256 "e99cb57a6b5147e0bb4645f8a5440349da81153c2257bffbe0056243422d5455"

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
