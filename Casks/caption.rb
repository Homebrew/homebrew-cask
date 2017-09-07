cask 'caption' do
  version '1.3.0'
  sha256 'fab06d1bfe4cf38591e3470756ddb9d974889c6ee06a38803a98746ff7fd1816'

  # github.com/gielcobben/Caption was verified as official when first introduced to the cask
  url "https://github.com/gielcobben/Caption/releases/download/v#{version}/Caption-v#{version}-darwin_x64.dmg"
  appcast 'https://github.com/gielcobben/Caption/releases.atom',
          checkpoint: '47d58b45edc6acdeed040d1a93d5b98562a05a78f78d0a3765335e544cdc2081'
  name 'Caption'
  homepage 'https://getcaption.co/'

  app 'Caption.app'
end
