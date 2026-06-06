cask "fsnotes" do
  version "7.2.0"
  sha256 "87ec686a4e869a661f399a7275e88a0784a4a9b0b8d5719a74a16aca07fe73f3"

  url "https://github.com/glushchenko/fsnotes/releases/download/v#{version}/FSNotes_v#{version}.zip",
      verified: "github.com/glushchenko/fsnotes/"
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
