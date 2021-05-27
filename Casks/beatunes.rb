cask "beatunes" do
  version "5.2.23"
  sha256 "9ff4e841a39ffeefec261e907e7f9afc6ab6a9adb390d80fcc198cbf276e1608"

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name "beaTunes"
  desc "Analyze, inspect, and play songs"
  homepage "https://www.beatunes.com/"

  livecheck do
    url "https://www.beatunes.com/en/beatunes-download.html"
    strategy :page_match do |page|
      v = page[/href=.*?beaTunes-(\d+(?:-\d+)*)\.dmg/i, 1]
      v.tr("-", ".")
    end
  end

  depends_on macos: ">= :sierra"

  app "beaTunes#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/beaTunes",
    "~/Library/Caches/beaTunes",
    "~/Library/Logs/beaTunes",
    "~/Library/Preferences/com.tagtraum.beatunes.plist",
  ]
end
