cask "fsnotes" do
  version "4.9.9"
  sha256 "b1d8bb4a1da694bc8fad0bed9d690dcd41c9a35f36ffb4dceb6f7425f155a282"

  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes.zip",
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
