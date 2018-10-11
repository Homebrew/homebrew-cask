cask 'reveal' do
  version '18'
  sha256 '2739838f486c43c90c094b8912490d4232d7f5fd7beb16e792534ad7aa9b082c'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://revealapp.com/download/'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  depends_on macos: '>= :high_sierra'

  app 'Reveal.app'
end
