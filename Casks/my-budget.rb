cask 'my-budget' do
  version '3.4.1-beta'
  sha256 '4a671f68115b02f96b46f10882ea00a16e8ec548d9d4361c393342e4e609935d'

  # github.com/reZach/my-budget/ was verified as official when first introduced to the cask
  url "https://github.com/reZach/my-budget/releases/download/#{version}/my-budget-#{version}.dmg"
  appcast 'https://github.com/reZach/my-budget/releases.atom'
  name 'My Budget'
  homepage 'https://rezach.github.io/my-budget/'

  app 'My Budget.app'
end
