cask 'fantastical' do
  version '2.2.1'
  sha256 '3432a38371366787e15535957612ccbe42f9e473acb3652cf0a965d512aefbdd'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: 'bcfc5f8cf6ce9f435a1aac5c739cbda0cffe3ee8454f998f7b843ad486c739c5'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
