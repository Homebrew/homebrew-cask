cask 'hostr' do
  version '0.8.0'
  sha256 '89e8b6a4d0168fb05520ff9ac1f69d378dade59a883034aaa549398c039faeed'

  url "https://hostr.co/apps/mac/Hostr-#{version}.zip"
  appcast 'https://hostr.co/updaters/mac.xml',
          :sha256 => '4d1609abef999c1355da7ed28971a9af9a4070c753a14f55897cd491a0517741'
  name 'Hostr'
  homepage 'https://hostr.co/'
  license :gratis

  app 'Hostr.app'
end
