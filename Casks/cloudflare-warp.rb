cask "cloudflare-warp" do
  version "1.5.294.0,20210701.2"
  sha256 :no_check

  url "https://cloudflarewarp.com/Cloudflare_WARP.zip"
  name "Cloudflare WARP"
  desc "Free app that makes your Internet safer"
  homepage "https://cloudflarewarp.com/"

  livecheck do
    skip
  end

  auto_updates true

  pkg "Cloudflare_WARP.pkg"

  uninstall launchctl: "com.cloudflare.1dot1dot1dot1.macos.loginlauncherapp",
            script:    {
              executable: "/Applications/Cloudflare WARP.app/Contents/Resources/uninstall.sh",
              input:      ["Y\n"],
              sudo:       true,
            }
end
