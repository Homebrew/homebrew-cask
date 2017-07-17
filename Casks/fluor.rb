cask 'fluor' do
  version '1.1'
  sha256 '23078f21bc8460df9336452e66e9033366a10ad504bb25622dbf868f2fd0c292'

  url "https://github.com/Pyroh/Fluor/releases/download/#{version}/Fluor.#{version}.dmg"
  appcast 'https://github.com/Pyroh/Fluor/releases.atom',
          checkpoint: '012bf48fe4641c45ae50500760ec5657e21fed0b550beaa812a10e56de8f8a5a'
  name 'Fluor'
  homepage 'https://github.com/Pyroh/Fluor/'

  app 'Fluor.app'
end
