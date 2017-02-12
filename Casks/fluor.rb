cask 'fluor' do
  version '1.1'
  sha256 '23078f21bc8460df9336452e66e9033366a10ad504bb25622dbf868f2fd0c292'

  url "https://github.com/Pyroh/Fluor/releases/download/#{version}/Fluor.#{version}.dmg"
  appcast 'https://github.com/Pyroh/Fluor/releases.atom',
          checkpoint: 'dbc24234d57bfa5e8c6483d6443f2cb24c4f75aa4f22a717d1c0e177a74587d8'
  name 'Fluor'
  homepage 'https://github.com/Pyroh/Fluor/'

  app 'Fluor.app'
end
