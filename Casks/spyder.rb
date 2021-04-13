cask "spyder" do
  version "5.0.0"
  sha256 "5e573ac9ba0e7a2f6ce9b1241c5bfca51df83e7c3c1e1d26d00109537b8ea728"

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
