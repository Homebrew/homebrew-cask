cask 'fluor' do
  version '1.1'
  sha256 '89ce58822dbb2816bc6dd2fbb29acc6c6c1344d0c1f66011a2ee1c671f06b803'

  url "https://github.com/Pyroh/Fluor/releases/download/#{version}/Fluor.#{version}.dmg"
  appcast 'https://github.com/Pyroh/Fluor/releases.atom',
          checkpoint: 'dbc24234d57bfa5e8c6483d6443f2cb24c4f75aa4f22a717d1c0e177a74587d8'
  name 'Fluor'
  homepage 'https://github.com/Pyroh/Fluor/'

  app 'Fluor.app'
end
