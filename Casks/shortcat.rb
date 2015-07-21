cask :v1 => 'shortcat' do
  version '0.7.6'
  sha256 'b78f20a94e0270ea1b0376677c07559db0e91c4ac53227b588adee46f971be1b'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  name 'Shortcat'
  homepage 'https://shortcatapp.com/'
  license :commercial
  tags :vendor => 'Sproutcube'

  app 'Shortcat.app'
end
