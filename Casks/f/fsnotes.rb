cask "fsnotes" do
  version "7.3.4"
  sha256 "8c8a971b4bc45bb4349f98661d1bfc474c9d25dd3fe0dba6abd34554a48606fc"

  url "https://github.com/glushchenko/fsnotes/releases/download/v#{version}/FSNotes_#{version}.zip"
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
