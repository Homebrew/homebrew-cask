cask "spyder" do
  version "5.3.0"
  sha256 "979ab649c478f578be8ce3e4260e1f53350076a3b94fa3ee5444cf0a5a4a9bd9"

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
