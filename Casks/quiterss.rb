cask :v1 => 'quiterss' do
  version '0.16.1'
  sha256 'b452fe75c3b825ae3074d4cc70ee29e18b445fb9a7cbccc2901b076bdfe41a07'

  url "http://quiterss.org/files/#{version}/QuiteRSS-#{version}.dmg"
  homepage 'http://quiterss.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'Quiterss.app'
end
