cask "losslessswitcher" do
  version "2.0,2"
  sha256 "bf2cd61b9afa1a0caa7a491b25ccb2cc12f09db3b9831c0d814854083dceae8a"

  url "https://github.com/vincentneo/LosslessSwitcher/releases/download/#{version.csv.first}/LosslessSwitcher#{version.csv.second}.app.zip"
  name "LosslessSwitcher"
  desc "Lossless sample rate switcher for Apple Music"
  homepage "https://github.com/vincentneo/LosslessSwitcher"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/LosslessSwitcher(\d+)\.app\.zip}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2] == match[1]) ? match[1] : "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :sequoia"

  app "LosslessSwitcher.app"

  uninstall quit: "com.vincent-neo.LosslessSwitcher"

  zap trash: "~/Library/Preferences/com.vincent-neo.LosslessSwitcher.plist"
end
