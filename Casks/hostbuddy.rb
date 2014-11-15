cask :v1 => 'hostbuddy' do
  version :latest
  sha256 :no_check

  url 'https://clickontyler.com/hostbuddy/download/'
  appcast 'http://shine.clickontyler.com/appcast.php?id=22'
  homepage 'http://clickontyler.com'
  license :unknown

  app 'Hostbuddy.app'
end
