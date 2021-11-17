cask "plex" do
  version "1.37.0.2706,5b2cfe50"
  sha256 "2bfdd3de790daefe1a4f468527be83e71a7f975897088c24e922f2a7edbca34c"

  url "https://downloads.plex.tv/plex-desktop/#{version.before_comma}-#{version.after_comma}/macos/Plex-#{version.before_comma}-#{version.after_comma}-x86_64.zip"
  name "Plex"
  desc "Home media player"
  homepage "https://www.plex.tv/"

  livecheck do
    url "https://plex.tv/api/downloads/6.json"
    regex(/"version"\s*:\s*"(\d(?:\.\d+)*)-([a-f0-9]{8})"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Plex.app"

  zap trash: [
    "~/Library/Application Support/Plex",
    "~/Library/Caches/Plex",
    "~/Library/Logs/Plex",
  ]
end
