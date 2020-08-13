cask "qv2ray" do
  version "2.6.3"
  sha256 "8554ff76b41dd4746cbd92afffeea32c990b5c9f836f9e71961656bb4bc235ae"

  # github.com/Qv2ray/Qv2ray/ was verified as official when first introduced to the cask
  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/Qv2ray-v#{version}.macOS-x64.dmg"
  appcast "https://github.com/Qv2ray/Qv2ray/releases.atom"
  name "Qv2ray"
  homepage "https://qv2ray.github.io/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "qv2ray.app"
end
