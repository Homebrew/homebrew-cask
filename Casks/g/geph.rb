cask "geph" do
  version "5.7.1"
  sha256 "2acc6945b6780333abbd47f97ae84310d8f66e16d5cc94d039356c260340baf3"

  url "https://dl.geph.io/geph-releases/macos-stable/#{version}/geph-macos.dmg"
  name "Geph"
  desc "Modular Internet censorship circumvention system"
  homepage "https://geph.io/en"

  livecheck do
    url :homepage
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/geph[._-]macos\.dmg}i)
  end

  depends_on :macos

  app "Geph.app"

  zap trash: [
    "~/Library/Application Support/gephgui#{version.major}",
    "~/Library/Preferences/io.geph.geph-electron.plist",
  ]

  caveats do
    requires_rosetta
  end
end
