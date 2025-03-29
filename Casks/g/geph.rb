cask "geph" do
  version "5.0.0"
  sha256 "d030f7ea5375383d67fc76b8bbfd09b24f8d02953fa29c8cd89c3ef0975c3b05"

  url "https://dl.geph.io/geph-releases/macos-stable/#{version}/geph-macos.dmg"
  name "Geph"
  desc "Modular Internet censorship circumvention system"
  homepage "https://geph.io/en"

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
