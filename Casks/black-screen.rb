cask 'black-screen' do
  version '0.1.23'
  sha256 '76ef3c805131201287a69c9486422f854bf0bebd4ace95c71244ede10668462e'

  url "https://github.com/shockone/black-screen/releases/download/v0.1.24/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: 'fb50ee40e4fc12bf7e84429882061b25479fcc02df04133b28a39f7a26d6a96c'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end
