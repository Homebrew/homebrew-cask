cask "tinypng4mac" do
  on_monterey :or_older do
    version "1.0.7"
    sha256 "4298642b0df6a310ce5131e4534deb826e4eef98fa8d2baf516624f3a15f4c23"

    url "https://github.com/kyleduo/TinyPNG4Mac/releases/download/v#{version}/TinyPNG4Mac_#{version.dots_to_underscores}.zip"

    livecheck do
      skip "Legacy version"
    end

    app "TinyPNG4Mac.app"
  end
  on_ventura :or_newer do
    version "2.2.1,20201"
    sha256 "d1ce60d76bf178221f0ab81051886b8adcb0856e654a2335a514b8b68a0c5b9c"

    url "https://github.com/kyleduo/TinyPNG4Mac/releases/download/v#{version.csv.first}/Tiny-Image-Installer#{"-#{version.csv.second}" if version.csv.second}.dmg"

    livecheck do
      url :url
      regex(%r{/v?(\d+(?:\.\d+)+)/Tiny-Image-Installer(?:[._-](v?(\d+(?:[._]\d+)*)))?\.dmg}i)
      strategy :github_latest do |json, regex|
        json["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
        end
      end
    end

    app "Tiny Image.app"
  end

  name "TinyPNG4Mac"
  desc "TinyPNG client"
  homepage "https://github.com/kyleduo/TinyPNG4Mac"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  zap trash: "~/Library/Preferences/com.kyleduo.tinypngmac.plist"
end
