cask 'reveal' do
  version '2'
  sha256 'ab62f33440072f283717cd2557b235f8241dbbef9c2e66ee0ab6d540bd4905f7'

  # dl.devmate.com/com.ittybittyapps.Reveal was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.ittybittyapps.Reveal#{version}/Reveal.zip"
  appcast 'https://download.revealapp.com/reveal-release.xml',
          checkpoint: '45f5abc7f69aa58300ad63786eabe2b5b4c6c4f6c90599e770d6eb50466231cf'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  app 'Reveal.app'
end
