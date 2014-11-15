cask :v1 => 'jump-desktop' do
  version :latest
  sha256 :no_check

  url 'http://jumpdesktop.com/downloads/jdmac'
  homepage 'http://jumpdesktop.com/#jdmac'
  license :unknown

  app 'Jump Desktop.app'
end
