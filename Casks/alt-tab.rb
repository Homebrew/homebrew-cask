cask 'alt-tab' do
  version '1.14.3'
  sha256 '35e82eba842c806eff7e242eb763e6c22b9eca6283a57bd72e8dd2e34a8e9e49'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
