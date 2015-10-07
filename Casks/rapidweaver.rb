cask :v1 => 'rapidweaver' do
  version '6.2.3'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://realmacsoftware.com/redirects/rapidweaver#{version.to_i}/direct"
  appcast "http://www.realmacsoftware.com/stats/rapidweaver#{version.to_i}.php",
            :sha256 => 'df1e4c18bb7356b9de4b8ca719021b2bcf9ffffe367b08db66243f78b9b31842',
            :format => :sparkle
  name 'RapidWeaver'
  homepage 'http://realmacsoftware.com/rapidweaver'
  license :commercial

  depends_on :macos => '>= :leopard'

  app 'RapidWeaver.app'
end
