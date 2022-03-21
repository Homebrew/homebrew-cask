cask "fsnotes" do
  version "5.3.7"
  sha256 "ec77944870f3693b865189f130e0edf662057eab255be487f798d5e2cefeaa29"

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
