cask "openrct2" do
  if MacOS.version <= :sierra
    version "0.2.6"
    sha256 "0073933b486da10b181bc8a226a140badc64c7cd93f681d769c17b5715221a85"
    url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-x86_64.zip",
        verified: "github.com/OpenRCT2/OpenRCT2/"
  else
    version "0.3.3"
    sha256 "60477520caded0bb4a139947a0d5f2df05fabdff8b59aa08b4dd09c91a160c21"
    url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-x86-64.zip",
        verified: "github.com/OpenRCT2/OpenRCT2/"
  end

  appcast "https://github.com/OpenRCT2/OpenRCT2/releases.atom"
  name "OpenRCT2"
  desc "Open-source re-implementation of RollerCoaster Tycoon 2"
  homepage "https://openrct2.io/"

  app "OpenRCT2.app"
end
