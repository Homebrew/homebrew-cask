cask "jordanbaird-ice@beta" do
  version "0.11.13-dev.1"
  sha256 "e7468f0ef5fd4398ef57860a8656db7086bf7c19c79b117e3668dc72c5090abf"

  url "https://github.com/jordanbaird/Ice/releases/download/#{version}/Ice.zip",
      verified: "github.com/jordanbaird/Ice/"
  name "Ice"
  desc "Menu bar manager"
  homepage "https://icemenubar.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-dev\.(\d+))?)$/i)
  end

  auto_updates true
  conflicts_with cask: "jordanbaird-ice"
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
