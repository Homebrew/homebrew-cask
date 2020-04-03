cask 'crystalmaker' do
  version '10.5.0'
  sha256 '7bc6cd2498989ef7886cd17d7af24d30229b78998aefabf8e026301d42caf05e'

  url 'http://crystalmaker.com/downloads/crystalmaker_mac.zip'
  appcast "http://crystalmaker.com/crystalmaker/release-notes/mac/#{version.major}/index.html"
  name 'CrystalMaker'
  homepage 'http://crystalmaker.com/index.html'

  app 'CrystalMaker.app'
end
