cask "geph" do
  version "5.5.0"
  sha256 "bbe4cb71fd266348f993abede06a74f3c5e43624e77e57adcbffdb80b281831d"

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
