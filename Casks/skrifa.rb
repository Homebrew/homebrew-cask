cask 'skrifa' do
  version '0.2.6'
  sha256 '2fce2d10f32887e33773b0a17d36bb59026f77bac53afed05dbd3a71af04362b'

  # github.com/Skrifa/Skrifa was verified as official when first introduced to the cask
  url "https://github.com/Skrifa/Skrifa/releases/download/v#{version}/Skrifa-#{version}-mac.zip"
  appcast 'https://github.com/Skrifa/Skrifa/releases.atom'
  name 'Skrifa'
  homepage 'https://skrifa.xyz/'

  app 'Skrifa.app'
end
