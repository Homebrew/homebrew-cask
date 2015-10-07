cask :v1 => 'shortcat' do
  version '0.7.6'
  sha256 'b78f20a94e0270ea1b0376677c07559db0e91c4ac53227b588adee46f971be1b'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  appcast 'https://shortcatapp.com/updates/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Shortcat'
  homepage 'https://shortcatapp.com/'
  license :commercial
  tags :vendor => 'Sproutcube'

  app 'Shortcat.app'
end
