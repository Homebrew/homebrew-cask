cask 'delicious-library' do
  version '3.6.2'
  sha256 '2f5e431cedcc1c19b59899c97908aedbfe1789fe56f16c0d65a39ac545c3be8e'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast "https://www.delicious-monster.com/downloads/DeliciousLibrary#{version.major}.xml",
          checkpoint: '140ffaac836717f9262e998ba38f07af6ded177ac346a9c65b22146a084d435d'
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'

  app "Delicious Library #{version.major}.app"
end
