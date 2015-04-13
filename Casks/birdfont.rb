cask :v1 => 'birdfont' do
  version '1.9'
  sha256 'a32b41608250bcba58572be36591a8a9c0907d8d724f31c6e6d18fc8137e5903'

  url "http://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'http://birdfont.org/'
  license :freemium

  app 'BirdFont.app'
end
