cask "geph" do
  version "4.7.6"
  sha256 "5ca98c49c09169c12fd4a738c929d673666890a1ae9e82bdd8ae4299999bf553"

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
