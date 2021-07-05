cask "spyder" do
  version "5.0.5"
  sha256 "4534b74e430c3145aa5b59e5fbff8fbe49c7e6a66724f025cb9d5fba98f2b4ad"

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
