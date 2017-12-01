cask 'gltfquicklook' do
  version '0.2.1'
  sha256 '97d95a4c988d67bfea1e2d87ed27531442f4497d6e0a935ce328f6ae9d33d0cf'

  url "https://github.com/magicien/GLTFQuickLook/releases/download/v#{version}/GLTFQuickLook_v#{version}.zip"
  appcast 'https://github.com/magicien/GLTFQuickLook/releases.atom',
          checkpoint: '9ab71358c9941aa25da844aeda1172a06493159c092bbfac27f592eed138e30e'
  name 'GLTFQuickLook'
  homepage 'https://github.com/magicien/GLTFQuickLook'

  qlplugin "GLTFQuickLook_v#{version}/GLTFQuickLook.qlgenerator"
end
