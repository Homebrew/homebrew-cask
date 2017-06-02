cask 'copyq' do
  version '3.0.2'
  sha256 'e7769a6eb9f5c078810f2874a2fa6033ad0108baa5c43a2d81ce0eec62e9dfa7'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: 'cdc9f601cb27de56005da03e55e4b6df2c582be6e766b303fd7f0c47904ec698'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
end
