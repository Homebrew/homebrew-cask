cask :v1 => 'rapidweaver' do
  version '6.2.3'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://realmacsoftware.com/redirects/rapidweaver#{version.to_i}/direct"
  appcast "http://www.realmacsoftware.com/stats/rapidweaver#{version.to_i}.php",
            :sha256 => '4aea6e90591f80fc6a8f805b877ecab25d6116e7e6fb67fabbc3b0f74b3aacad',
            :format => :sparkle
  name 'RapidWeaver'
  homepage 'http://realmacsoftware.com/rapidweaver'
  license :commercial

  depends_on :macos => '>= :leopard'

  app 'RapidWeaver.app'
end
