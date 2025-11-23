cask "libndi" do
  version :latest
  sha256 :no_check

  url "https://downloads.ndi.tv/SDK/NDI_SDK_Mac/libNDI_for_Mac.pkg",
      verified: "downloads.ndi.tv/SDK/NDI_SDK_Mac/"
  name "libNDI"
  desc "NDI SDK"
  homepage "https://ndi.video/"

  pkg "libNDI_for_Mac.pkg"

  uninstall pkgutil: "com.newtek.libndi"

  # No zap stanza required
end
