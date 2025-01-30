cask "ice" do
  version "0.11.12"
  sha256 "d770e81597566dd2d2363feb350f808c7a92e363df95c51e48140eb30e452cc9"

  url "https://github.com/jordanbaird/Ice/releases/download/#{version}/Ice.zip",
      verified: "github.com/jordanbaird/Ice/"
  name "Ice"
  desc "Menu bar management tool"
  homepage "https://icemenubar.app/"

  depends_on macos: ">= :sonoma"

  app "Ice.app"

  zap trash: [
    "~/Library/HTTPStorages/com.jordanbaird.Ice",
    "~/Library/Preferences/com.jordanbaird.Ice.plist",
  ]
end
