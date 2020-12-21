cask "abyssoft-teleport" do
  version "1.3.1"
  sha256 "b01173ca64edd4eeb7fbf1d249f2fe8aa7b20919a19cf20aaa1ef15fa30e8db1"

  url "https://github.com/abyssoft/teleport/releases/download/v#{version}/teleport-v#{version}.zip"
  appcast "https://github.com/abyssoft/teleport/releases.atom"
  name "teleport"
  desc "Virtual KVM"
  homepage "https://github.com/abyssoft/teleport"

  app "teleport.app"

  zap trash: [
    "~/Library/Caches/com.abyssoft.teleport",
    "~/Library/Preferences/com.abyssoft.teleport.plist",
  ]
end
