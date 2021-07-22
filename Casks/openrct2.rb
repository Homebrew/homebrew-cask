cask "openrct2" do
  if MacOS.version <= :sierra
    version "0.2.6"
    sha256 "0073933b486da10b181bc8a226a140badc64c7cd93f681d769c17b5715221a85"
  else
    version "0.3.4"
    sha256 "33b0f11c754e1db5e7df4982a6476e051b430c6da5dd4a94b8211e1b300d7c11"
  end

  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-x86-64.zip",
      verified: "github.com/OpenRCT2/OpenRCT2/"
  name "OpenRCT2"
  desc "Open-source re-implementation of RollerCoaster Tycoon 2"
  homepage "https://openrct2.io/"

  app "OpenRCT2.app"
end
