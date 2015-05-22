cask :v1 => 'biba' do
  version :latest
  sha256 :no_check

  url 'https://www.biba.com/osx_downloads/dmg'
  name 'Biba'
  appcast 'https://biba.com/osx_downloads/appcast',
          :sha256 => '1ba615b670b0bc57c1ceef52a86399dfc848cff92a9e7f13f6e628217972d1db'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
