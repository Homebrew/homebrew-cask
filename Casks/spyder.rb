cask "spyder" do
  version "4.2.2"
  sha256 "2731a337199d8b30f03ee573602a4563d91637881e079c377d9ece127c9f4cd5"

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
