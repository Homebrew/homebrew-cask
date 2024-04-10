cask "spyder" do
  arch arm: "_arm64"

  version "5.5.4"
  sha256 arm:   "090922b1061a14b2b1cf1acf70cdc493cd7918ca0b709171917d42e74bfaa082",
         intel: "86fd4c34fcea88587de4f0bcead57d865531eda87037142a4f2a7dcd1685b885"

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
