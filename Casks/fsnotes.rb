cask "fsnotes" do
  version "6.2.1"
  sha256 "b32dc357adda0138f697236a21ce91bcd967d395579713a27b344f2851534270"

  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip",
      verified: "github.com/glushchenko/fsnotes/"
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  livecheck do
    url :url
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
    strategy :github_latest
  end

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end
