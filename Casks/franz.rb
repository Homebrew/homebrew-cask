cask 'franz' do
  version '3.1.0'
  sha256 '1789fb44c47fd25db123c8ad6142e24007901fa07a8494263c312dbab7708eb9'

  # github.com/imprecision/franz-app was verified as official when first introduced to the cask
  url "https://github.com/imprecision/franz-app/releases/download/#{version}/Franz-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/imprecision/franz-app/releases.atom',
          checkpoint: '481bc974abafc69025c5907056373df7a8e5f795544a7a1949e58c3e5858de1b'
  name 'Franz'
  homepage 'http://meetfranz.com'
  license :gratis

  app 'Franz.app'
end
