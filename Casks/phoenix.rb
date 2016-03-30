cask 'phoenix' do
  version '2.0.1'
  sha256 '95c1cf43b581f7957658f95a89a6567bdbc95050d6dd796156c676092055defa'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom',
          checkpoint: '2880ccfe4a79f84e6aa55b29e47d46663a8f007926d62af7d44fa83d71f70750'
  name 'Phoenix'
  homepage 'https://github.com/kasper/phoenix/'
  license :mit

  accessibility_access true
  depends_on macos: '>= :yosemite'

  app 'Phoenix.app'

  zap delete: '~/.phoenix.js'
end
