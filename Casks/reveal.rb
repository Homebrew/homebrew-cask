cask 'reveal' do
  version '20'
  sha256 '608317de5ff8ac0ff4e43de5cda59b67f83bfe83103422bd5683d00da3fbf911'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://updates.devmate.com/com.ittybittyapps.Reveal2.xml'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  depends_on macos: '>= :high_sierra'

  app 'Reveal.app'
end
