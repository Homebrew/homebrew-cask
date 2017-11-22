cask 'gltfquicklook' do
  version '0.2.0'
  sha256 'fc9f333c25e089c6cf968ba84715c09e067a9b5191cda163c560d19671fc5834'

  url "https://github.com/magicien/GLTFQuickLook/releases/download/v#{version}/GLTFQuickLook_v#{version}.zip"
  name 'GLTFQuickLook'
  homepage 'https://github.com/magicien/GLTFQuickLook'

  qlplugin "GLTFQuickLook_v#{version}/GLTFQuickLook.qlgenerator"
end
