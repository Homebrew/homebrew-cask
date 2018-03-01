cask 'anyipsum' do
  version '0.2.0'
  sha256 '967d12bc531f239e1b89c1e6dd6f548e423064df95506b0f08fd801474846dfa'

  url "https://github.com/jlowgren/AnyIpsum/releases/download/v#{version}/AnyIpsum.dmg"
  appcast 'https://github.com/jlowgren/AnyIpsum/releases.atom',
          checkpoint: '42f22d3a0e3f5ecf7b4b0557209ce799f01e5b856c75c2fb6e3e25bc12ae5d23'
  name 'AnyIpsum'
  homepage 'https://github.com/jlowgren/AnyIpsum'

  app 'AnyIpsum.app'
end
