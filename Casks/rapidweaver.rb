cask :v1 => 'rapidweaver' do
  version '6'
  sha256 'e7b72daffa9c7809b713e05a1b518873a71a73afdd6a97f300b8bb9ab35a9361'

  url "http://realmacsoftware.com/redirects/rapidweaver#{version}/direct"
  appcast "http://www.realmacsoftware.com/stats/rapidweaver#{version}.php"
  homepage 'http://realmacsoftware.com/rapidweaver'
  license :unknown

  app 'RapidWeaver.app'
end
