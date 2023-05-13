cask "geph" do
  version "4.8.1"
  sha256 "2dffad817c8b7007abcdbbb59e7b3ea280b8a9be23dd24b33e26837ed830ca2f"

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
