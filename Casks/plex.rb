cask "plex" do
  version "1.38.0.2734,ec4489fe"
  sha256 "4052e31618c993c3796da2402562719ba000a16ba32349f51f4effc2a2614b6f"

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
