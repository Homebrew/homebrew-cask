cask "cloudflare-warp" do
  version "1.5.207.0,20210616.5"
  sha256 :no_check

  url "https://cloudflarewarp.com/Cloudflare_WARP.zip"
  name "Cloudflare WARP"
  desc "Free app that makes your Internet safer"
  homepage "https://cloudflarewarp.com/"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/87d9992a-351c-44a9-849b-3f9a89d63d18"
    strategy :sparkle
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
