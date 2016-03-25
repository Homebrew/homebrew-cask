cask 'birdfont' do
  version '2.10.5'
  sha256 'e1bb495069d6f68664d32386d90f1b7d128467307754a2e9315efd9f2b477428'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'
  license :freemium

  app 'BirdFont.app'
end
