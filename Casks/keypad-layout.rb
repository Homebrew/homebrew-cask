cask 'keypad-layout' do
  version '1.6'
  sha256 '12a980ca6cda993a064331c07e3939bde2749fcc99e3a31ab31ded8edd01596c'

  url "https://github.com/janten/keypad-layout/releases/download/#{version}/Keypad-Layout.zip"
  appcast 'https://github.com/janten/keypad-layout/releases.atom',
          checkpoint: '8b5b40b44a66972a6a614122705294eff4086de2dc59d43874c8b9e6d688ffd9'
  name 'Keypad Layout'
  homepage 'https://github.com/janten/keypad-layout'

  app 'Keypad Layout.app'
end
