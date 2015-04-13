cask :v1 => 'biba' do
  version :latest
  sha256 :no_check

  url 'https://www.biba.com/osx_downloads/dmg'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
