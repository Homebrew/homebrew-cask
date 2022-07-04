cask "openrct2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  if MacOS.version <= :sierra
    version "0.2.6"
    sha256 "0073933b486da10b181bc8a226a140badc64c7cd93f681d769c17b5715221a85"
    url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-x86-64.zip",
        verified: "github.com/OpenRCT2/OpenRCT2/"
  else
    version "0.4.1"
    sha256 "c0c4e91ab2ded14872c2e3e82549479ac5b82a44d9377403deba5a8e92077db6"
    url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-universal.zip",
        verified: "github.com/OpenRCT2/OpenRCT2/"
  end

  name "OpenRCT2"
  desc "Open-source re-implementation of RollerCoaster Tycoon 2"
  homepage "https://openrct2.io/"

  app "OpenRCT2.app"
end
