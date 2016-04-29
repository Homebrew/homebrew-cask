cask 'phoenix' do
  version '2.1.1'
  sha256 '055bf76fb091ec8124b9cb8284333ad2bae5a242892bb91061fa2cee3ad4f9d4'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom',
          checkpoint: '45630fb4ef040f5bcdaa52cc324a226bd8cf4809c7e25b28305df1536ab75b9a'
  name 'Phoenix'
  homepage 'https://github.com/kasper/phoenix/'
  license :mit

  accessibility_access true
  depends_on macos: '>= :yosemite'

  app 'Phoenix.app'

  zap delete: '~/.phoenix.js'
end
