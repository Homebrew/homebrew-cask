cask 'openinterminal' do
  version '2.0.4'
  sha256 '0c2fa8342271971f16bef1023f344b930fad938217a2e1b17335c216685a7ec9'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  depends_on macos: '>= :sierra'

  app 'OpenInTerminal.app'
end
