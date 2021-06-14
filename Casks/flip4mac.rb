cask "flip4mac" do
  version "3.3.8"
  sha256 "dde035ecd07f14224dcaa9ed70c873e18544bbff5ce79bb5b1bbbb05ff9f61c0"

  url "https://www.telestream.net/download-files/flip4mac/#{version.sub(/^(\d+)\.(\d+).*$/, '\1-\2')}/Flip4Mac-#{version}.dmg"
  name "Flip4Mac"
  desc "Play back and convert Windows Media"
  homepage "https://www.telestream.net/flip4mac/"

  depends_on macos: "<= :el_capitan"

  pkg "Flip4Mac.pkg"

  uninstall pkgutil: "net.telestream.Flip4Mac"

  caveats do
    discontinued
  end
end
