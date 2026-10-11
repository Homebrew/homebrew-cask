cask "betteraudio@beta" do
  version "26.7-beta.2,20261010162230"
  sha256 "cd78eaa0b5ae67a6bb50aaaedf0aa7fe5d8dc4940e7c84c075a6a2635f76f583"

  url "https://github.com/rokartur/BetterAudio/releases/download/#{version.csv.first}/BetterAudio-#{version.csv.first}-#{version.csv.second}.dmg"
  name "BetterAudio"
  desc "Per-app volume, EQ and audio device control"
  homepage "https://betteraudio.pro/"

  livecheck do
    url :url
    regex(/BetterAudio[._-]v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)-(\d+)\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          "#{match[1]},#{match[2]}"
        end
      end.flatten
    end
  end

  conflicts_with cask: "betteraudio"
  depends_on macos: :sonoma

  app "BetterAudio.app"

  uninstall quit: "pro.betteraudio.BetterAudio"

  zap trash: [
    "~/Library/Application Support/BetterAudio",
    "~/Library/Caches/pro.betteraudio.BetterAudio",
    "~/Library/HTTPStorages/pro.betteraudio.BetterAudio",
    "~/Library/Preferences/pro.betteraudio.BetterAudio.plist",
  ]
end
