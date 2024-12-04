cask "aerial@beta" do
  version "3.5.2beta4"
  sha256 "3b4fa193b30e4672f5089779e379341e810151531abb38f8baa25cf46c01eb01"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip",
      verified: "github.com/JohnCoates/Aerial/"
  name "Aerial Screensaver"
  desc "Apple TV Aerial screensaver"
  homepage "https://aerialscreensaver.github.io/"

  # Beta releases are marked as pre-release, so we have to use the
  # `GithubReleases` strategy to check all recent releases.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)*(?:[._-]?beta\d+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  conflicts_with cask: "aerial"
  depends_on macos: ">= :sierra"

  screen_saver "Aerial.saver"

  zap trash: [
    "~/Library/Application Support/Aerial",
    "~/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Caches/Aerial/",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Preferences/ByHost/com.JohnCoates.Aerial*.plist",
    "~/Library/Preferences/ByHost/com.JohnCoates.Aerial*",
    "~/Library/Screen Savers/Aerial.saver",
  ]
end
