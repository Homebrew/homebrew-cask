cask "spyder" do
  arch arm: "_arm64"

  version "5.5.6"
  sha256 arm:   "e3b87830e32b6c0585c8973acb38db005b57a37088f3f0c50143d6a5b16c7690",
         intel: "022afd6c59a3f0831950f0546be82238a8372a7d97360a8b5da0c932dabe8f41"

  url "https://github.com/spyder-ide/spyder/releases/download/v#{version}/Spyder#{arch}.dmg",
      verified: "github.com/spyder-ide/spyder/"
  name "Spyder"
  desc "Scientific Python IDE"
  homepage "https://www.spyder-ide.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Spyder.app"

  zap trash: [
    "~/.spyder-py3",
    "~/Library/Application Support/Spyder",
    "~/Library/Caches/Spyder",
    "~/Library/Saved Application State/org.spyder-ide.Spyder.savedState",
  ]
end
