cask "trailer" do
  version "1.9.0,1951"
  sha256 "e6908b74a1228447a1828a6a5422081c67d67c9e09708448471fd4a1c4c0e9c7"

  url "https://github.com/ptsochantaris/trailer/releases/download/v#{version.csv.first}/Trailer-#{version.csv.second}.zip"
  name "Trailer"
  desc "Managing Pull Requests and Issues For GitHub & GitHub Enterprise"
  homepage "https://ptsochantaris.github.io/trailer/"

  # The Sparkle appcast has not been updated since 1.8.11, so we check
  # the latest GitHub release for the version and build number in the asset URL.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/Trailer[._-](\d+)\.zip}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next unless match

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Trailer.app"

  uninstall launchctl: "com.housetrip.Trailer.Launcher",
            quit:      "com.housetrip.Trailer"

  zap trash: [
    "~/Library/Application Support/com.housetrip.Trailer",
    "~/Library/Caches/com.housetrip.Trailer",
    "~/Library/Group Containers/group.Trailer",
    "~/Library/Preferences/com.housetrip.Trailer.plist",
  ]
end
