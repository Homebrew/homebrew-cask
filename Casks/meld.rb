cask 'meld' do
  version '3.19.0-r1,osx-10'
  sha256 '675ffcbaab4c1515a418f025a4a9aefd2374e4a40a7dae5e851e2b0eda92b91a'

  # github.com/yousseb/meld was verified as official when first introduced to the cask
  url "https://github.com/yousseb/meld/releases/download/#{version.after_comma}/meldmerge.dmg"
  appcast 'https://github.com/yousseb/meld/releases.atom',
          checkpoint: 'bc0ffb4d3204e050b12515688989c3fbb501b25c04e71acbd0c1493e5cdd5240'
  name 'Meld for OSX'
  homepage 'https://yousseb.github.io/meld/'

  app 'Meld.app'
  binary "#{appdir}/Meld.app/Contents/MacOS/Meld", target: 'meld'
end
