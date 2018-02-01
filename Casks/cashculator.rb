cask 'cashculator' do
  version '1.3.8'
  sha256 'bc16aa9de05f7308b42999eaaba7511128780fa0f2ddc65a3578c4c9a9802d82'

  url "https://dl.apparentsoft.com/Cashculator_#{version}.dmg"
  appcast 'https://dl.apparentsoft.com/cashculator.rss',
          checkpoint: 'cd773b3b4fb0a7e4ff186f877d924ecdaac5ddfb3915f566d8af6aa9e71daab9'
  name 'Cashculator'
  homepage 'https://www.apparentsoft.com/cashculator'

  app 'Cashculator.app'
end
