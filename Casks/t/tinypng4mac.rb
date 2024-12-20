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
    version "2.0.1"
    sha256 "e7e2b9c9d92d33ed40ad80ed70624aa0ac5bc08e9cd558c52d08370370a6f55b"

    url "https://github.com/kyleduo/TinyPNG4Mac/releases/download/v#{version}/Tiny-Image-Installer.dmg"

    app "Tiny Image.app"
  end

  name "TinyPNG4Mac"
  desc "TinyPNG client"
  homepage "https://github.com/kyleduo/TinyPNG4Mac"

  zap trash: "~/Library/Preferences/com.kyleduo.tinypngmac.plist"
end
