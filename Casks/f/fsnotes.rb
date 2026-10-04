cask "fsnotes" do
  version "7.3.5"
  sha256 "c7b64db673acd38d4a3df32000afff143df095716b5fd661ae1d57277a10bafc"

  url "https://github.com/glushchenko/fsnotes/releases/download/v#{version}/FSNotes_v#{version}.zip"
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end
