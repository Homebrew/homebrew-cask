cask :v1 => 'freeze' do
  version :latest
  sha256 :no_check

  url 'https://freezeapp.net/download/Freeze.zip'
  name 'Freeze'
  homepage 'https://freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
