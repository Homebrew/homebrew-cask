cask "opera@beta" do
  version "113.0.5230.26"
  sha256 "44588db9289edc3aecb8b0a852cbcdbdb22991b6c4ee373cafabda30762796d5"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Web browser"
  homepage "https://www.opera.com/computer/beta"

  livecheck do
    url "https://get.geo.opera.com/pub/opera-beta/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true

  app "Opera Beta.app"

  zap trash: [
    "~/Library/Application Support/com.operasoftware.OperaNext",
    "~/Library/Caches/com.operasoftware.OperaNext",
    "~/Library/Preferences/com.operasoftware.OperaNext.plist",
  ]
end
