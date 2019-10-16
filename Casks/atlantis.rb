cask 'atlantis' do
  version '0.9.9.6'
  sha256 'c3e38e71061426b5b112487e1274b36110fe6e4723069101112f237e75e09131'

  url "https://www.riverdark.net/atlantis/downloads/Atlantis-#{version}.zip"
  appcast 'https://www.riverdark.net/atlantis/downloads/'
  name 'Atlantis'
  homepage 'https://www.riverdark.net/atlantis/'

  app 'Atlantis.app'
end
