cask 'outset' do
  version '2.0.6'
  sha256 'bfc3921e91fab1b9ff915c2935162b930ab0035a1336932e085f46bcf95bb752'

  url "https://github.com/chilcote/outset/releases/download/v#{version}/outset-#{version}.pkg"
  appcast 'https://github.com/chilcote/outset/releases.atom',
          checkpoint: '5833059196488072b473f5d643bc4b3824fad10396f332a4c04282767a00f113'
  name 'outset'
  homepage 'https://github.com/chilcote/outset'

  pkg "outset-#{version}.pkg"

  uninstall pkgutil: 'com.github.outset'
end
