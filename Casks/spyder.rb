cask "spyder" do
  version "5.0.3"
  sha256 "6805efe4b6c7bb6f30e7bdc5f8cebc5cae4a318a566cd38bb79e02ca55d91fa4"

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
