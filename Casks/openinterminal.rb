cask 'openinterminal' do
  version '2.2.0'
  sha256 '736edd05d021e15887282daa8d76b494743559c3de8f297bd729a5169559eb64'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  depends_on macos: '>= :sierra'

  app 'OpenInTerminal.app'
end
