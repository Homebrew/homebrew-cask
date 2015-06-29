cask :v1 => 'birdfont' do
  version '1.9'
  sha256 'a32b41608250bcba58572be36591a8a9c0907d8d724f31c6e6d18fc8137e5903'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'
  license :freemium

  app 'BirdFont.app'
end
