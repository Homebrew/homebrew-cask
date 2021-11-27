cask "spyder" do
  version "5.2.0"
  sha256 "bb53c4c7ed4ead0df90df0fef6161db9e9238aca4f42878f8991ce83c3a31c9e"

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
