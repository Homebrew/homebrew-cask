cask :v1 => 'subler' do
  version '0.25'
  sha256 '7b93d8a6afc1db00ea86b3bb2f6f8927012e66f1d74d7bfc7293d87cc8565f86'

  url "https://subler.googlecode.com/files/Subler-#{version}.zip"
  appcast 'http://subler.googlecode.com/svn/doc/appcast.xml',
          :sha256 => 'b8d659a84089c8ebd4969c7e5393b0472d844c79d43bad33cbfbbe153f2dfb51'
  homepage 'https://code.google.com/p/subler/'
  license :oss

  app 'Subler.app'
end
