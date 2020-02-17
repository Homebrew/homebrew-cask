cask 'mudlet' do
  version '4.5.0'
  sha256 '8ef1291449137748ff7c02ab34995dc8d6e4135676bceb8a009cf54bd4aa41d0'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :high_sierra'

  app 'Mudlet.app'
end
