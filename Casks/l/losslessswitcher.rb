cask "losslessswitcher" do
  version "1.1.0,1.1"
  sha256 "8b4b8a7ae19df9c9c135a281b48a4306803b53fc98933affa450897343e6a3e2"

  url "https://github.com/vincentneo/LosslessSwitcher/releases/download/#{version.csv.first}/LosslessSwitcher-#{version.csv.second || version.csv.first}.app.zip"
  name "LosslessSwitcher"
  desc "Lossless sample rate switcher for Apple Music"
  homepage "https://github.com/vincentneo/LosslessSwitcher"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/LosslessSwitcher[._-]v?(\d+(?:\.\d+)+)\.app\.zip}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2] == match[1]) ? match[1] : "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "LosslessSwitcher.app"

  uninstall quit: "com.vincent-neo.LosslessSwitcher"

  zap trash: "~/Library/Preferences/com.vincent-neo.LosslessSwitcher.plist"
end
