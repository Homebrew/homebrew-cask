cask "1.1.1.1" do
  version :latest
  sha256 :no_check

  url "https://1.1.1.1/Cloudflare%20WARP.zip"
  name "1.1.1.1"
  desc "The free app that makes your Internet safer"
  homepage "https://1.1.1.1/"

  pkg "Cloudflare WARP.pkg"

  uninstall script: {
    executable: "/Applications/Cloudflare\ WARP.app/Contents/Resources/uninstall.sh",
    input:      ["Y\n"],
    sudo:       true,
  }
end
