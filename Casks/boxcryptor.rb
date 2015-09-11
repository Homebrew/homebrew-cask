cask :v2 => 'boxcryptor' do
  version :latest
  sha256 :no_check

  url 'https://www.boxcryptor.com/l/download-macosx'
  name 'Boxcryptor'
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          :sha256 => '7b62a9cdd0e94fded41b4e4b0d8a015af04e86a2ffa1b741076fae69e2b7ec91',
          :format => :sparkle
  homepage 'https://www.boxcryptor.com/en'
  license :commercial

  depends_on :macos => '>= :lion'

  app 'Boxcryptor.app'
end
