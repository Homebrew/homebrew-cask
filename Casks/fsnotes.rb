cask "fsnotes" do
  version "4.10.0"
  sha256 "f28f42e9241825d017c88f84cdf7227a330550f0d917b2051a9088516a294161"

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
