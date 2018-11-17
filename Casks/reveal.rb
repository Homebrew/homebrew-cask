cask 'reveal' do
  version '19'
  sha256 '805dc8243e0c9dd59b8f883abcd3c9497018378ffc68695c63427ceb58c3b68e'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://updates.devmate.com/com.ittybittyapps.Reveal2.xml'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  depends_on macos: '>= :high_sierra'

  app 'Reveal.app'
end
