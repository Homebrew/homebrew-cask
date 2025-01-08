cask "jordanbaird-ice" do
  version "0.11.12"
  sha256 "d770e81597566dd2d2363feb350f808c7a92e363df95c51e48140eb30e452cc9"

  url "https://github.com/jordanbaird/ice-releases/releases/download/#{version}/Ice.zip",
      verified: "github.com/jordanbaird/ice-releases/"
  name "Ice"
  desc "Menu bar manager"
  homepage "https://icemenubar.app/"

  livecheck do
    url "https://jordanbaird.github.io/ice-releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Ice.app"

  uninstall quit:       "com.jordanbaird.Ice",
            login_item: "Ice"

  zap trash: [
    "~/Library/Caches/com.jordanbaird.Ice",
    "~/Library/HTTPStorages/com.jordanbaird.Ice",
    "~/Library/Preferences/com.jordanbaird.Ice.plist",
    "~/Library/WebKit/com.jordanbaird.Ice",
  ]
end
