cask :v1 => 'hobo' do
  version :latest
  sha256 :no_check

  url 'https://clickontyler.com/hobo/download/v1/'
  appcast 'https://shine.clickontyler.com/appcast.php?id=31'
  name 'Hobo'
  homepage 'https://clickontyler.com/hobo/'
  license :commercial

  app 'Hobo.app'
end
