cask :v1 => 'kkbox' do
  version '5.2.60-7fa4156'
  sha256 '1bf79ba1ae269ddea023477781a080b6a2173cb812734bbf99a5d4dda168c1e2'

  url "http://download.kkbox.com/files/KKBOX-#{version}.dmg"
  name 'KKBOX'
  homepage 'https://www.kkbox.com/'
  license :commercial

  app 'KKBOX.app'
end
