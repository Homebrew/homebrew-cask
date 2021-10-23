cask "fsnotes" do
  version "5.1.2"
  sha256 "c28624f1c12bab4a4de48462fb615483480fe60078ae04c63ac31cd5b428124b"

  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_v#{version}.zip",
      verified: "github.com/glushchenko/fsnotes/"
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)*)["' >]}i)
  end

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end
