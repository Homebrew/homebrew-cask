cask :v1 => 'hostbuddy' do
  version :latest
  sha256 :no_check

  url 'https://clickontyler.com/hostbuddy/download/'
  appcast 'https://shine.clickontyler.com/appcast.php?id=22'
  name 'Hostbuddy'
  homepage 'https://clickontyler.com/hostbuddy/'
  license :commercial

  app 'Hostbuddy.app'
end
