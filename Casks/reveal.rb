cask 'reveal' do
  version '1.6.2'
  sha256 'e245d592e2397e7fd056ba47ac4b197335081302be98ee17d46249dbbcd3fa5c'

  url "http://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'http://download.revealapp.com/reveal-release.xml',
          :sha256 => '37f7261e44a8e5e268524db944c668e68036a3249f465567fd63033d9df93d94'
  name 'Reveal'
  homepage 'http://revealapp.com/'
  license :commercial

  app 'Reveal.app'
end
