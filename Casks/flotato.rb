cask 'flotato' do
  version :latest
  sha256 :no_check

  url 'https://flotato.com/download/'
  name 'Flotato'
  homepage 'https://flotato.com/'

  auto_updates true

  app 'Flotato.app'
end
