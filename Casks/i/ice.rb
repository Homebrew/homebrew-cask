cask "ice" do
  version "0.9.0"
  sha256 "32f90944ff12b73f5520adef06759ecd52aad8a90f7d46bf35407126d6331e15"

  url "https://github.com/jordanbaird/Ice/releases/download/#{version}/Ice.zip",
      verified: "github.com/jordanbaird/Ice/"
  name "Ice"
  desc "Menu bar manager"
  homepage "https://icemenubar.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Ice.app"

  uninstall quit: "Ice"

  zap trash: [
    "~/Library/Preferences/com.jordanbaird.Ice.plist",
    "~/Library/Saved Application State/com.jordanbaird.Ice.savedState",
  ]
end
