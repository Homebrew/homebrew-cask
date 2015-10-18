cask :v1 => 'fantastical' do
  version '2.1.1'
  sha256 '695fd69b07359230938ddcb7c32a0078009b487f4f28c37d9b059e42447f7328'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          :sha256 => 'a7f0b6699c8222cb5a8fad0ae2001a17e7441e206c90cc3a29e4b5c4a2e1aec6'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
