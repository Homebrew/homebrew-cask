cask "abyssoft-teleport" do
  version "1.3.3"
  sha256 "e4dabc78a492f4207d9416d20534ffab4fe4c3dc18fd90f942059491f475ea01"

  url "https://github.com/abyssoft/teleport/releases/download/v#{version}/teleport-v#{version}.zip"
  name "teleport"
  desc "Virtual KVM"
  homepage "https://github.com/abyssoft/teleport"

  app "teleport.app"

  zap trash: [
    "~/Library/Caches/com.abyssoft.teleport",
    "~/Library/Preferences/com.abyssoft.teleport.plist",
  ]
end
