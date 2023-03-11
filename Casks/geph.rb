cask "geph" do
  version "4.7.10"
  sha256 "0327ac9915d26bac337d134a9c741edabfe14f278f84ef7f269ac383932b61b0"

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
