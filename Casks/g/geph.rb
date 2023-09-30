cask "geph" do
  version "4.9.2"
  sha256 "cbe726316ee661e45bc0c5652bcd2903b787502a3ce74c6ef6565a4881ac993a"

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
