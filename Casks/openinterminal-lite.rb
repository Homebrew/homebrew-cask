cask 'openinterminal-lite' do
  version '0.4.5'
  sha256 '75c43090dfa8296f645ae27c7bfb45f46615495bd4d23bf90bb64ddf832630ce'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
