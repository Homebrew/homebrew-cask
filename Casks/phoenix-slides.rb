cask 'phoenix-slides' do
  version '1.4.0'
  sha256 'ab65a2c2be1b8975f27cfed925c5d820e77e7089c0ab83c15d30bc930f1bf21f'

  url "http://blyt.net/phxslides/phoenix-slides-#{version.delete('.')}.dmg"
  name 'Phoenix Slides'
  homepage 'http://blyt.net/phxslides'
  license :gpl

  app 'Phoenix Slides.app'
end
