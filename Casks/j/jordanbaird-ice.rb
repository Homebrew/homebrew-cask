cask "jordanbaird-ice" do
  version "0.10.3"
  sha256 "505891e86ed931fe23963a68d38a9fa29400a9fbe6c2aabdf1a9caa8c08c5f41"

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
