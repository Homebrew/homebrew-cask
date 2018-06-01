cask 'reveal' do
  version '15'
  sha256 '57186d7df6c74ac763853adfb541c5c21255e857c227b1d8833a034a95a76bae'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://revealapp.com/download/',
          checkpoint: '0db8c6eeadc17d917952e4866d36ea3f0d7a953df52ce2cd98bce1c114e5e85f'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  depends_on macos: '>= :sierra'

  app 'Reveal.app'
end
