cask 'pppc-utility' do
  version '1.2.0'
  sha256 '58ed98d1ca749bec88651c62ff0e4bb2550e84ba441cd0df7d3225059eb66c61'

  url "https://github.com/jamf/PPPC-Utility/releases/download/#{version}/PPPC-Utility.zip"
  appcast 'https://github.com/jamf/PPPC-Utility/releases.atom'
  name 'PPPC Utility'
  name 'Privacy Preferences Policy Control Utility'
  homepage 'https://github.com/jamf/PPPC-Utility'

  depends_on macos: '>= :high_sierra'

  app 'PPPC Utility.app'

  uninstall quit: 'com.jamf.opensource.pppcutility'
end
