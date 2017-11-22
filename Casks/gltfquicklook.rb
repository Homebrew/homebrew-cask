cask 'gltfquicklook' do
  version '0.2.0'
  sha256 'fc9f333c25e089c6cf968ba84715c09e067a9b5191cda163c560d19671fc5834'

  url "https://github.com/magicien/GLTFQuickLook/releases/download/v#{version}/GLTFQuickLook_v#{version}.zip"
  appcast 'https://github.com/magicien/GLTFQuickLook/releases.atom',
          checkpoint: '85dc6cc58f9fdf928fc5dc2673be1135f70c7daa208045e7ff96c93fd35864b0'
  name 'GLTFQuickLook'
  homepage 'https://github.com/magicien/GLTFQuickLook'

  qlplugin "GLTFQuickLook_v#{version}/GLTFQuickLook.qlgenerator"
end
