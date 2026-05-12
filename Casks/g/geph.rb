cask "geph" do
  version "5.7.0"
  sha256 "30dc625f7d59e30fe1c44d06f47c05793058a57b8fb3aa8d08719ef8271bc8de"

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
