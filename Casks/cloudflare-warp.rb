cask "cloudflare-warp" do
  version :latest
  sha256 :no_check

  url "https://1.1.1.1/Cloudflare%20WARP.zip"
  name "Cloudflare WARP"
  desc "Free app that makes your Internet safer"
  homepage "https://1.1.1.1/"

  pkg "Cloudflare_WARP.pkg"

  uninstall script: {
    executable: "/Applications/Cloudflare WARP.app/Contents/Resources/uninstall.sh",
    input:      ["Y\n"],
    sudo:       true,
  }
end
