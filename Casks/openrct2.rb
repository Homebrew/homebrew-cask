cask "openrct2" do
  if MacOS.version <= :sierra
    version "0.2.6"
    sha256 "0073933b486da10b181bc8a226a140badc64c7cd93f681d769c17b5715221a85"
  else
    version "0.3.5"
    sha256 "f58f6ad7c31ea1ad071cfce4977f476b02877cd709165f2180c2ceeed9718109"
  end

  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-x86-64.zip",
      verified: "github.com/OpenRCT2/OpenRCT2/"
  name "OpenRCT2"
  desc "Open-source re-implementation of RollerCoaster Tycoon 2"
  homepage "https://openrct2.io/"

  app "OpenRCT2.app"
end
