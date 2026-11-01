cask "fsnotes" do
  version "7.5.0"
  sha256 "2810f9cfd28b5cef111ec816d26c8b1f3e8940bc49e1b85e22df3855125012f1"

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
