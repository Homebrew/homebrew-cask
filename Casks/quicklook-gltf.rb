cask 'quicklook-gltf' do
  version :latest
  sha256 :no_check

  url 'https://github.com/toshiks/glTF-quicklook/releases/download/1.1/glTF-quicklook_v1.1.zip'
  name 'QuickLook for gltf format files'
  homepage 'https://github.com/toshiks/glTF-quicklook'

  depends_on formula: 'draco'

  qlplugin 'glTF-quicklook.qlgenerator'
end
