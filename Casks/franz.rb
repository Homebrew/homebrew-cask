cask 'franz' do
  version '4.0.4'
  sha256 'a744a4e4086647ad8c982b38aae761c6a5e3a1394cb4a0d5e2c6bff8e46742cf'

  # github.com/imprecision/franz-app was verified as official when first introduced to the cask
  url "https://github.com/imprecision/franz-app/releases/download/#{version}/Franz-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/imprecision/franz-app/releases.atom',
          checkpoint: 'ff6f46a9386bd0f33a5e1f68aa7ef54e89b7e87850acdb41866c7bddfb0b6ca3'
  name 'Franz'
  homepage 'http://meetfranz.com'

  app 'Franz.app'
end
