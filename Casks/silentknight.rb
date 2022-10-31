cask "silentknight" do
  if MacOS.version <= :mojave
    version "1.21,2022.06"
    sha256 "c1cbb734f620e073f1c08c473edaa036c2b5ccdca02baa99ca117f86c10ad505"

    livecheck do
      skip "Legacy version for Mojave and earlier"
    end
  else
    version "2.02,2022.10"
    sha256 "bd9d6cc175cdf86971a1a1bd39051fa82299ae79c6eee502b9125326649b4d04"

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
