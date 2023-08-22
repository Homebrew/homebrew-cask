cask "trailer" do
  version "1.8.9"
  sha256 "ce850748e9155c96239b405251773284b1ffc1b59c6ede472dfea7ada75812f8"

  url "https://github.com/ptsochantaris/trailer/releases/download/#{version}/Trailer-#{version.no_dots}.zip",
      verified: "github.com/ptsochantaris/trailer/"
  name "Trailer"
  desc "Managing Pull Requests and Issues For GitHub & GitHub Enterprise"
  homepage "https://ptsochantaris.github.io/trailer/"

  app "Trailer.app"

  uninstall quit: "com.housetrip.Trailer"

  zap trash: [
    "~/Library/Application Support/com.housetrip.Trailer",
    "~/Library/Caches/com.housetrip.Trailer",
    "~/Library/Group Containers/group.Trailer",
    "~/Library/Preferences/com.housetrip.Trailer.plist",
  ]
end
