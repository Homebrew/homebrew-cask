cask "fsnotes" do
  version "6.6.0"
  sha256 "51fafd00a408bcb205d251e1d006ce3e1be9f480340b924211a52391a08aadfb"

  url "https://github.com/glushchenko/fsnotes/releases/download/v#{version}/FSNotes_#{version}.zip",
      verified: "github.com/glushchenko/fsnotes/"
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end
