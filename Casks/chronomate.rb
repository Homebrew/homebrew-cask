cask :v1 => 'chronomate' do
  version '0.9.8'
  sha256 '4002fe0924ba57cb70c77f729d60fdf2182586dcbc8b871d6dcc8051280f83f7'

  # qb.com is the official download host per the vendor homepage
  url "http://studio-qb.com/sites/studio-qb.com/files/releases/chronomate_#{version}.dmg"
  appcast 'http://chronomateapp.com/update',
          :sha256 => 'fc538460e350c638a7e1b87e91e0cc79bbf8e324dc28819a818deee090037feb'
  name 'ChronoMate'
  homepage 'http://chronomateapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ChronoMate.app'
end
