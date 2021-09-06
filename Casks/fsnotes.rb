cask "fsnotes" do
  version "5.0.2"
  sha256 "e2c80de73bfd0923e1a8b8cac34cf67bd22ff7e5f53dddcd9fffc7095a382a74"

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
