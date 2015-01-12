cask :v1 => 'astrill' do
  version :latest
  sha256 :no_check

  url 'http://download.astrill.com/astrill-setup-mac.dmg'
  name 'Astrill'
  homepage 'https://www.astrill.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Astrill Setup.mpkg'

  uninstall :pkgutil => 'com.Astrill.app'
end
