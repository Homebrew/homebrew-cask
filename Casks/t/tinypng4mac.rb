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
    version "2.1.0"
    sha256 "8857dc6cbd6962d52eb2dd61696bcb13bfa397c6077c12def820bc9618c95857"

    url "https://github.com/kyleduo/TinyPNG4Mac/releases/download/v#{version}/Tiny-Image-Installer-#{version.major}0#{version.minor}#{version.patch}0.dmg"

    app "Tiny Image.app"
  end

  name "TinyPNG4Mac"
  desc "TinyPNG client"
  homepage "https://github.com/kyleduo/TinyPNG4Mac"

  zap trash: "~/Library/Preferences/com.kyleduo.tinypngmac.plist"
end
