cask "lyricsx" do
  version "1.6.3,2351"
  sha256 "7566809283aecdedd5275ded9180cedb467ce40c524b3297b411fe7abb479391"

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version.csv.first}/LyricsX_#{version.csv.first}+#{version.csv.second}.zip"
  name "LyricsX"
  desc "Lyrics for iTunes, Spotify, Vox and Audirvana Plus"
  homepage "https://github.com/ddddxxx/LyricsX"

  livecheck do
    url "https://github.com/ddddxxx/LyricsX/releases/latest"
    regex(%r{href=.*?/LyricsX_(\d+(?:\.\d+)*)\+(\d+)\.zip}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true

  app "LyricsX.app"

  zap trash: [
    "~/ddddxxx.LyricsX",
    "~/Library/Application Scripts/3665V726AE.group.ddddxxx.LyricsX",
    "~/Library/Application Scripts/ddddxxx.LyricsX",
    "~/Library/Application Scripts/ddddxxx.LyricsXHelper",
    "~/Library/Containers/ddddxxx.LyricsX",
    "~/Library/Containers/ddddxxx.LyricsXHelper",
    "~/Library/Group Containers/3665V726AE.group.ddddxxx.LyricsX",
    "~/Library/Preferences/ddddxxx.LyricsX.plist",
  ]
end
