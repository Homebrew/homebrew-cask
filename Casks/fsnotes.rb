cask "fsnotes" do
  version "5.0.3"
  sha256 "10fc4169e52359db8efef0e36427f6b6eb98981d59e8ff2fb1f1710666c6dcbf"

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
