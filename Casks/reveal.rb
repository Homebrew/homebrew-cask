cask 'reveal' do
  version '16'
  sha256 '17e67e58b0ec8766c06c996a572b53e6b3b2beeb1f823d9d3412de9b6a38ede6'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://revealapp.com/download/'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  depends_on macos: '>= :sierra'

  app 'Reveal.app'
end
