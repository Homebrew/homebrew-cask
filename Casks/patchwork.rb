cask 'patchwork' do
  version '3.11.3'
  sha256 'c1610115379ee91e54da9ff3cc5ff35d459c773f1d84e5fee1bd7f69d56c68b0'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
