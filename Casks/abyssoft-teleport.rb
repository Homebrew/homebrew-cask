cask "abyssoft-teleport" do
  version "1.2.3"
  sha256 "79ae0398a3d1b20f2e09d721fa783fecf7fdfbc9606b0c9797aed0a3ec455bb1"

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
