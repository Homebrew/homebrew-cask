cask 'atlantis' do
  version '0.9.9.4'
  sha256 '52957a5b92b1fd3612aa7a3a07f5238236dad4397a6a256a03355c331433e540'

  url "http://www.riverdark.net/atlantis/downloads/Atlantis-#{version}.dmg"
  appcast 'http://www.riverdark.net/atlantis/downloads/',
          checkpoint: '73d865e7bb2de4cc3a5157bfd5d28c1d6a23bf4b85b4ef873ce78e8c2167adba'
  name 'Atlantis'
  homepage 'http://www.riverdark.net/atlantis/'

  app 'Atlantis.app'
end
