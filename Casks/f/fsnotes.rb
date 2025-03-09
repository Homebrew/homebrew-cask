cask "fsnotes" do
  version "6.10.0"
  sha256 "7538d36d112fe356a6e898a45b4a3765ceaf4d2e1adeefe9245d90b44500f38c"

  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip",
      verified: "github.com/glushchenko/fsnotes/"
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end
