cask "fsnotes" do
  version "5.1.1"
  sha256 "1adfb2df8d8f9ada13ed34022a97d488d7c5ff27af4727b152b5b29728015df4"

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
