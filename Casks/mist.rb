cask 'mist' do
  version '0.8.7'
  sha256 'd8f5a442292b7a5faf4423a765fd34d4f08913ed59950c12c0c0f4447f64c278'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '4beac8a0d92cb0a142cb33444d28bc48d5634830725ccd95b9eb16820ca11548'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
