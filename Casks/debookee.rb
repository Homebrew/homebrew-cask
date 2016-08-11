cask 'debookee' do
  version '5.2.0'
  sha256 'fbf39e372b893dd2c55bc9ddb1141293daa30817e0a3134ea2ae99b753e6a60a'

  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          checkpoint: '16fedc4bd07eb307d4727b80f499ba8f6841ed7c22c98c2deae07970d02eac97'
  name 'Debookee'
  homepage 'https://www.iwaxx.com/debookee/'
  license :commercial

  app "Debookee #{version}/Debookee.app"
end
