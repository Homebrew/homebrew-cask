cask "abyssoft-teleport" do
  version "1.2.2"
  sha256 "b087e5309ae64a51fb8d1f0ded2a2795dee9d77134022df05bb48da413c3968a"

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
