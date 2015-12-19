cask 'phoenix' do
  version '2.0.1'
  sha256 '95c1cf43b581f7957658f95a89a6567bdbc95050d6dd796156c676092055defa'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom'
  name 'Phoenix'
  homepage 'https://github.com/kasper/phoenix/'
  license :mit

  app 'Phoenix.app'

  depends_on :macos => '>= :yosemite'

  accessibility_access true

  zap :delete => '~/.phoenix.js'
end
