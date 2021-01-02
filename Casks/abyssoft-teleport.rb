cask "abyssoft-teleport" do
  version "1.3.2"
  sha256 "42c16ef8b84a3638a0d9d2db9d8a60b3d1caedad83aa5462bc78208efeeb0a1e"

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
