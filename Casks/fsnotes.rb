cask "fsnotes" do
  version "4.9.8"
  sha256 "b11d94f8c1b07ff9db44372a27a1d88fa5dd1a1f0470caa0b5109fe37d9c93a9"

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
