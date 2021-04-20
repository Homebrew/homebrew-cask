cask "spyder" do
  version "5.0.1"
  sha256 "070690355d7503fd50fbd225b345e366d34de6f07f7e3c169fdf205886d58edb"

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
