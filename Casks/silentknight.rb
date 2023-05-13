cask "silentknight" do
  on_mojave :or_older do
    version "1.21,2022.06"
    sha256 "c1cbb734f620e073f1c08c473edaa036c2b5ccdca02baa99ca117f86c10ad505"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "2.05,2023.04"
    sha256 "a407ab90db49431cf2a24c3dba532f5e33c858e78ad1903dd8663796a6e32072"

    livecheck do
      url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
      strategy :page_match do |page|
        match = page.match(%r{(\d+)/(\d+)/silentknight([^1]\d+)\.zip}i)
        next if match.blank?

        "#{match[3].split("", 2).join(".")},#{match[1]}.#{match[2]}"
      end
    end
  end

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/silentknight#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "SilentKnight"
  desc "Automatically checks computer's security"
  homepage "https://eclecticlight.co/lockrattler-systhist/"

  depends_on macos: ">= :el_capitan"

  app "silentknight#{version.csv.first.no_dots}/SilentKnight.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.SilentKnight",
    "~/Library/Preferences/co.eclecticlight.SilentKnight.plist",
    "~/Library/Saved Application State/co.eclecticlight.SilentKnight.savedState",
  ]
end
