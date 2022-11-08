cask "fsnotes" do
  version "6.0.3"
  sha256 "320098a0a62fc9dd89c4874990778aa9da4246645ba869620ed12ef1fa8b9467"

  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip",
      verified: "github.com/glushchenko/fsnotes/"
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end
