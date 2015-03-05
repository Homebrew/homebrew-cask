cask :v1 => 'jump-desktop' do
  version :latest
  sha256 :no_check

  url 'http://jumpdesktop.com/downloads/jdmac'
  name 'Jump Desktop'
  homepage 'http://jumpdesktop.com/#jdmac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Jump Desktop.app'
end
