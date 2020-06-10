cask 'openinterminal' do
  version '2.2.1'
  sha256 '5ac048b26b5976975eaf5b51bfa1543b3aa493ad8c07d869bc96acc77ba694a5'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  depends_on macos: '>= :sierra'

  app 'OpenInTerminal.app'
end
