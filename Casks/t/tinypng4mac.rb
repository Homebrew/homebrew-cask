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
    version "2.2.0"
    sha256 "6284d5678df78ab01d7a9b21cee76acd3753f95a1a2f7ecc999ad1ab0fa3a400"

    url "https://github.com/kyleduo/TinyPNG4Mac/releases/download/v#{version}/Tiny-Image-Installer.dmg"

    app "Tiny Image.app"
  end

  name "TinyPNG4Mac"
  desc "TinyPNG client"
  homepage "https://github.com/kyleduo/TinyPNG4Mac"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  zap trash: "~/Library/Preferences/com.kyleduo.tinypngmac.plist"
end
