cask "geph" do
  version "4.8.7"
  sha256 "96bbb451ed3eed2890c230c1aea2eff4dd5c9ec20ad1216c9075a81072d35cee"

  url "https://sos-ch-dk-2.exo.io/utopia/geph-releases/macos-stable/#{version}/geph-macos.dmg",
      verified: "sos-ch-dk-2.exo.io/utopia/geph-releases/"
  name "Geph"
  desc "Modular Internet censorship circumvention system"
  homepage "https://geph.io/en/"

  livecheck do
    url :homepage
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/geph[._-]macos\.dmg}i)
  end

  app "Geph.app"

  zap trash: [
    "~/Library/Application Support/gephgui#{version.major}",
    "~/Library/Preferences/io.geph.geph-electron.plist",
  ]
end
