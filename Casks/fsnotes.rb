cask "fsnotes" do
  version "5"
  sha256 "7b021777c0033a07557be22ec7f388834d075016f788f3030756c68ccfa0e92f"

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
