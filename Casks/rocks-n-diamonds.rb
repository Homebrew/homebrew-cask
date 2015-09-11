cask :v1 => 'rocks-n-diamonds' do
  version '3.3.1.2'
  sha256 '5405786ac296e4052e25f26a2a200a01d49e9c0ae77070a9b94ecbce893ae543'

  url "http://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  name 'Rocks\'n\'Diamonds'
  homepage 'http://www.artsoft.org/rocksndiamonds/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "Rocks'n'Diamonds #{version}/Rocks'n'Diamonds.app"
end
