cask "captin" do
  version "1.3.1"
  sha256 "edeedeb73ee0ecdbd017a53f72919e41c5231108a3bab329d6fa4035d0c65fc3"

  url "https://raw.githubusercontent.com/cool8jay/public/master/captin/Captin.zip",
      verified: "raw.githubusercontent.com/cool8jay/public/master/captin/"
  name "Captin"
  desc "Tool to show caps lock status"
  homepage "https://captin.mystrikingly.com/"

  livecheck do
    url "https://raw.githubusercontent.com/cool8jay/public/master/captin/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Captin.app"

  uninstall quit: "com.100hps.captin"

  zap trash: [
    "~/Library/Caches/com.100hps.captin",
    "~/Library/Preferences/com.100hps.captin.plist",
  ]
end
