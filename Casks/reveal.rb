cask 'reveal' do
  version '15'
  sha256 '57186d7df6c74ac763853adfb541c5c21255e857c227b1d8833a034a95a76bae'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://revealapp.com/download/'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  depends_on macos: '>= :sierra'

  app 'Reveal.app'
end
