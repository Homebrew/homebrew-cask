cask :v1 => 'phoenix' do
  version '2.0'
  sha256 'b3abae45218770cb999a2b5da35bd44ac03e38897fdf8248907e6de34a12e6b9'

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
