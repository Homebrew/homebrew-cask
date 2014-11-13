cask :v1 => 'astrill' do
  version :latest
  sha256 :no_check

  url 'http://download.astrill.com/astrill-setup-mac.dmg'
  homepage 'https://www.astrill.com'
  license :unknown

  pkg 'Astrill Setup.mpkg'
  uninstall :pkgutil => 'com.Astrill.app'
end
