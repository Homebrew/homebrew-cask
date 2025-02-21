cask "geph" do
  version "4.99.31"
  sha256 "90bff7d0a3cb93528db8a0624dc200c61c5728196e820fe9b980a8cc29e40c61"

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
