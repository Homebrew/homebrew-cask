cask "spyder" do
  version "5.3.1"
  sha256 "8d31c036b8b17b6b309f12ef7aa51041fe6fad37d77c0b3732ec3ce3e41763a2"

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
