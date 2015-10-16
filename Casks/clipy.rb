cask :v1 => 'clipy' do
  version '1.0.4'
  sha256 '83d75507b4747fd2559b5e497c0dd8ac2ef9b10dd1edd9e946abac1ce0c8ba47'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'http://clipy-app.com/appcast.xml',
          :sha256 => 'eb94a69d168e032b04684d5a68d91641ff0b585bed299a29020052b811d6cd63',
          :format => :sparkle
  name 'Clipy'
  homepage 'http://clipy-app.com/'
  license :mit

  depends_on :macos => '>= :mavericks'

  app 'Clipy.app'
end
