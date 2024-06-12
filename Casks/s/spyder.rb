cask "spyder" do
  arch arm: "_arm64"

  version "5.5.5"
  sha256 arm:   "c6e4a1d6bb2129e141d67a88b1ae406bc6b4a8b3eb4c67db2ab0b32541a18140",
         intel: "690ef00e2ff531ff7ca97cae377734baa76db709f47f56edac321b2c6f574237"

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
