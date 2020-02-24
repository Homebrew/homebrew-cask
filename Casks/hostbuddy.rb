cask 'hostbuddy' do
  version '2.2.4,20_13'
  sha256 '613c9eb8972d2bbfb53fda0b16b033d6d668e4de9f8667ecbe1bf0337dcab41a'

  url "https://download.clickontyler.com/hostbuddy/hostbuddy#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=41'
  name 'Hostbuddy'
  homepage 'https://clickontyler.com/hostbuddy/'

  app 'Hostbuddy.app'
end
