cask 'mist' do
  version '0.8.6'
  sha256 '3a66606aad465d8295e29e9711f5e76630c36bfd6064966ed6b7b4c194320acd'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '4377f696a120458187946696684e3a39cac3e1ca9931069d36299c52f87e998e'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
