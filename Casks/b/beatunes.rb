cask "beatunes" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.2"
  sha256 arm:   "01083cf53fbb706b94971d8623764d886bdc9518ed130f9dddcdaf94f5e55640",
         intel: "e81a7c7ba4f08717d526f63fc9c96df31f426fbae258a10c6aa7c03dc58c2f56"

  url "https://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}-#{arch}.dmg"
  name "beaTunes"
  desc "Analyze, inspect, and play songs"
  homepage "https://www.beatunes.com/"

  livecheck do
    url "https://www.beatunes.com/en/download-dmg-#{arch}.html"
    regex(/href=.*?beaTunes[._-]?v?(\d+(?:-\d+)+)[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("-", ".") }
    end
  end

  depends_on :macos

  app "beaTunes.app"

  zap trash: [
    "~/Library/Application Support/beaTunes",
    "~/Library/Caches/beaTunes",
    "~/Library/Logs/beaTunes",
    "~/Library/Preferences/com.tagtraum.beatunes.plist",
  ]
end
