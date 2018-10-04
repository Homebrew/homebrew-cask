cask 'museeks' do
  version '0.10.1'
  sha256 'f067342e5ca1143eb726388caed59cafe973e569c8c80600085932f6c6e71397'

  # github.com/martpie/museeks was verified as official when first introduced to the cask
  url "https://github.com/martpie/museeks/releases/download/#{version}/museeks.dmg"
  appcast 'https://github.com/martpie/museeks/releases.atom'
  name 'Museeks'
  homepage 'https://museeks.io/'

  app 'Museeks.app'

  zap trash: [
               '~/Library/Application Support/museeks',
               '~/Library/Saved Application State/com.electron.museeks.savedState',
             ]
end
