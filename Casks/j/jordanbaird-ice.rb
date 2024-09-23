cask "jordanbaird-ice" do
  version "0.11.4"
  sha256 "b5aeffb3066ea3a86dd286d309cbaf2f87eac3565b9e7941a676d52fdbbca31e"

  url "https://github.com/jordanbaird/Ice/releases/download/#{version}/Ice.zip",
      verified: "github.com/jordanbaird/Ice/"
  name "Ice"
  desc "Menu bar manager"
  homepage "https://icemenubar.app/"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Ice.app"

  uninstall quit: "com.jordanbaird.Ice"

  zap trash: "~/Library/Preferences/com.jordanbaird.Ice.plist"
end
