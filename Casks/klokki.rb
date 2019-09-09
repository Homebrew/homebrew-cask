cask 'klokki' do
  version :latest
  sha256 :no_check

  # bit.ly was verified as official when first introduced to the cask
  url 'https://bit.ly/DownloadKlokki'
  name 'Klokki'
  homepage 'https://klokki.com/'

  app 'Klokki.app'
end
