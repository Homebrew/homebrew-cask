cask 'openinterminal' do
  version '2.0.5'
  sha256 'ecc02de450161c44cf9b7ce4b683b650a33879ccb72e4798d676cdf92e18df22'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  depends_on macos: '>= :sierra'

  app 'OpenInTerminal.app'
end
