cask "studio-3t-community" do
  version "2025.1.0"

  if Hardware::CPU.arm?
    sha256 "8bb1055aacb27d40b56ee5183ef40a86d6d44d84e85602c6f0ad71bf997c5031"
    url "https://download-ce.studio3t.com/studio-3t/mac-aarch64/#{version}/Studio-3T-Community-Edition.dmg"
  else
    sha256 "3989252ae68ab2700a766490dcb3fa20db1757a41ec865c59ad0ff2f6382b994"
    url "https://download-ce.studio3t.com/studio-3t/mac/#{version}/Studio-3T-Community-Edition.dmg"
  end

  name "Studio 3T Community Edition"
  desc "Community Edition of IDE, client, and GUI for MongoDB"
  homepage "https://studio3t.com/"

  app "Studio 3T Community Edition.app"

  zap trash: [
    "~/.3T/studio-3t/",
    "~/Library/Preferences/3t.enterprise.mongochef.plist",
    "~/Library/Preferences/3t.mongochef.core.plist",
    "~/Library/Preferences/3t.mongochef.enterprise.plist",
    "~/Library/Preferences/3t.mongochef.pro.plist",
  ]
end
