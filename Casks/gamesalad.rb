cask :v1 => 'gamesalad' do
  version '0.13.7'
  sha256 '2cd494d163f8b1e97b670caca6a85f3b1d574f1786ee69afa3cd83361ee3b2db'

  url "http://gs.releases.x.s3.amazonaws.com/creator/#{version}/GameSalad-Creator-#{version}-beta.dmg"
  name 'GameSalad'
  homepage 'http://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
