cask :v1 => 'fantastical' do
  version '2.1.3'
  sha256 'f4e7c6632e0590d6f5643e786a5bc9c063274abe86f5cbcc9e6fbcb9a6bee770'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          :sha256 => '19575279e36d7d8c6a2f1492075b34c1e43fe55f491f6ca2339a606e422dc9bb'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
