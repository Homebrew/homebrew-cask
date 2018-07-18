cask 'openbci-gui' do
  version '3.3.2'
  sha256 '02938f40abf5382fb00472f454ce455ad79337e03170c80bcd4ec4395152f095'

  # github.com/OpenBCI/OpenBCI_GUI/releases was verified as official when first introduced to the cask
  url "https://github.com/OpenBCI/OpenBCI_GUI/releases/download/v#{version}/application.macosx.zip"
  appcast 'https://github.com/OpenBCI/OpenBCI_GUI/releases.atom'
  name 'OpenBCI GUI'
  homepage 'https://openbci.com/'

  app 'OpenBCI_GUI.app'
end
