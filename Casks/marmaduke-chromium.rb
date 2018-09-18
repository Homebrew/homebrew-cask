cask 'marmaduke-chromium' do
  version '69.0.3497.92'
  sha256 '7dfbf451334367447032bb67b608611346b3a785c6901d99679c47540f1c1359'

  # https://github.com/macchrome/macstable/releases/ was verified as official when first introduced to the cask
  url "https://github.com/macchrome/macstable/releases/download/v#{version}-r576753-macOS/Chromium.#{version}.sync.app.zip"
  appcast 'https://github.com/macchrome/macstable/releases.atom'
  name 'Chromium'
  homepage 'https://github.com/macchrome/macstable/releases'
  app 'Chromium.app'
end

