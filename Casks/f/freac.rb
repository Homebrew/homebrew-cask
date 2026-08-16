cask "freac" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.7"

  on_catalina :or_older do
    sha256 "d1dfcd43a675ed3a4674791a76dff1e92c712b545a01c4308f48a10782056117"

    url "https://github.com/enzo1982/freac/releases/download/v#{version.csv.first}/freac-#{version}-macos10.dmg",
        verified: "github.com/enzo1982/freac/"

    livecheck do
      url "https://www.freac.org/downloads-mainmenu-33"
      regex(%r{href=.*?/freac[._-](\d+(?:\.\d+)+)[._-]macos10\.dmg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map do |match|
          match[1].blank? ? match[0] : "#{match[0]},#{match[1]}"
        end
      end
    end
  end
  on_big_sur :or_newer do
    sha256 "22e29d73bdaf6dcb851a03bfe344028e38457c85b21e7378ffac8625a8ed4f12"

    url "https://github.com/enzo1982/freac/releases/download/v#{version.csv.first}/freac-#{version}-macos11.dmg",
        verified: "github.com/enzo1982/freac/"

    livecheck do
      url "https://www.freac.org/downloads-mainmenu-33"
      regex(%r{href=.*?/freac[._-](\d+(?:\.\d+)+)[._-]macos11\.dmg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map do |match|
          match[1].blank? ? match[0] : "#{match[0]},#{match[1]}"
        end
      end
    end
  end
  on_macos do
    app "freac.app"

    uninstall quit: "org.freac.freac"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.freac.freac.sfl*",
      "~/Library/Caches/freac",
      "~/Library/Preferences/freac",
      "~/Library/Preferences/org.freac.freac.plist",
      "~/Library/Saved Application State/org.freac.freac.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "027a53acf9c083edaada7d9225d6b75b69020a8beec0b99e65e950a19716e37e",
           x86_64_linux: "17d5d8ee6c3a0498e1639d002ff64ee557fe3c9f4b347996107d8755ea91f2d6"

    url "https://github.com/enzo1982/freac/releases/download/v#{version.csv.first}/freac-#{version}-linux-#{arch}.AppImage",
        verified: "github.com/enzo1982/freac/"

    app_image "freac-#{version}-linux-#{arch}.AppImage", target: "freac.AppImage"
  end

  name "fre:ac"
  desc "Audio converter and CD ripper"
  homepage "https://www.freac.org/"
end
