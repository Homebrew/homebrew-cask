cask "spyder" do
  version "5.3.2"
  sha256 "8e9e54c66ab63bbc189dd3770c5f3984138fea0570ecf3e0a983a9f3effa5f01"

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
