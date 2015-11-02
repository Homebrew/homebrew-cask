cask :v1 => 'picka' do
  version :latest
  sha256 :no_check

  url 'https://getpicka.com/downloads/Picka.zip'
  name 'Picka'
  homepage 'https://getpicka.com/'
  license :commercial

  app 'Picka.app'
end
