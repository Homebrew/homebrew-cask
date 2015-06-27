cask :v1 => 'gamesalad' do
  version '0.13.24'
  sha256 'd430b0b9b71ba091e62d50e5a0946c97359a07b9ef0a95278ae42f1d49af64f3'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://gs.releases.s3.amazonaws.com/creator/#{version}/GameSalad-Creator-#{version}-beta.dmg"
  name 'GameSalad'
  appcast 'https://gamesalad.com/download/studioUpdates',
          :sha256 => 'b6b47498451094af58cbc95720a7e44707257b840f2f796896b18320fc1b84e8'
  homepage 'http://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
