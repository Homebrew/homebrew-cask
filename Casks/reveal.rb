cask 'reveal' do
  version '4'
  sha256 '2e8f4c1a20c355d540de2aab3552114059ab7d63b987e0a116e9a02fee1fe426'

  # dl.devmate.com/com.ittybittyapps.Reveal was verified as official when first introduced to the cask
  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://download.revealapp.com/reveal-release.xml',
          checkpoint: '45f5abc7f69aa58300ad63786eabe2b5b4c6c4f6c90599e770d6eb50466231cf'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  app 'Reveal.app'
end
