cask "gltfquicklook" do
  version "0.2.2"
  sha256 "be9d7d65572ba50fbe71e1318b24f10bbba00bba9a9ca77a6d9219cac4b70b15"

  url "https://github.com/magicien/GLTFQuickLook/releases/download/v#{version}/GLTFQuickLook_v#{version}.zip"
  appcast "https://github.com/magicien/GLTFQuickLook/releases.atom"
  name "GLTFQuickLook"
  homepage "https://github.com/magicien/GLTFQuickLook"

  qlplugin "GLTFQuickLook_v#{version}/GLTFQuickLook.qlgenerator"
end
