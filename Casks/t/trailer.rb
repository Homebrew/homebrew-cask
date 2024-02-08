cask "trailer" do
  version "1.8.11"
  sha256 "6b37ea88be391ba071200d45b1ba2cfde5acf351c84b0665fc9a38e2ecae94bc"

  url "https://github.com/ptsochantaris/trailer/releases/download/#{version}/Trailer-#{version.no_dots}.zip",
      verified: "github.com/ptsochantaris/trailer/"
  name "Trailer"
  desc "Managing Pull Requests and Issues For GitHub & GitHub Enterprise"
  homepage "https://ptsochantaris.github.io/trailer/"

  depends_on macos: ">= :big_sur"

  app "Trailer.app"

  uninstall quit: "com.housetrip.Trailer"

  zap trash: [
    "~/Library/Application Support/com.housetrip.Trailer",
    "~/Library/Caches/com.housetrip.Trailer",
    "~/Library/Group Containers/group.Trailer",
    "~/Library/Preferences/com.housetrip.Trailer.plist",
  ]
end
