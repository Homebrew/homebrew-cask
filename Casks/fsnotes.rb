cask "fsnotes" do
  version "6.2.0"
  sha256 "cf7875de438a091d61d257eab264fb11fa1fb506b66159a6e166214a3822a9ca"

  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip",
      verified: "github.com/glushchenko/fsnotes/"
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  livecheck do
    url :url
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
    strategy :github_latest
  end

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end
