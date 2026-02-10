cask "fsnotes" do
  version "7.1.0"
  sha256 "7c1892f909b4f39aef1bfb965d356eb9e046580d153af5ad59337be73980196e"

  url "https://github.com/glushchenko/fsnotes/releases/download/v#{version}/FSNotes_v#{version}.zip",
      verified: "github.com/glushchenko/fsnotes/"
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end
