cask "fsnotes" do
  version "7.6.0"
  sha256 :no_check # required as upstream package is updated in-place

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
    "~/Library/Application Scripts/866P6MTE92.co.fluder.FSNotes.Share",
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
    "~/Library/Group Containers/866P6MTE92.co.fluder.FSNotes.Share",
  ]
end
