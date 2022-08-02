cask "geph" do
  version "4.4.20"
  sha256 "f1c86069f41ef4d114e4da13c1c07a852288b38eaeb13b70251e500541782b45"

  url "https://f001.backblazeb2.com/file/geph4-dl/Geph4Releases/#{version}/geph-macos-#{version}.dmg",
      verified: "f001.backblazeb2.com/file/geph4-dl/"
  name "Geph"
  desc "Modular Internet censorship circumvention system"
  homepage "https://geph.io/en/"

  livecheck do
    url :homepage
    regex(/href=.*?geph[._-]macos[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Geph.app"

  zap trash: [
    "~/Library/Application Support/gephgui#{version.major}",
    "~/Library/Preferences/io.geph.geph-electron.plist",
  ]
end
