cask 'mudlet' do
  version '3.17.0'
  sha256 'c358d2b03528deadc8ec333dee7e326e6efd5eba175e2c2dd972f844e42ebb66'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
