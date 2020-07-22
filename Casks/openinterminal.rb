cask 'openinterminal' do
  version '2.2.2'
  sha256 'ba95e668eb6aa70b97299e19d5e0b6031478f9342669c89c5ca4e05d14d73e94'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  depends_on macos: '>= :sierra'

  app 'OpenInTerminal.app'
end
