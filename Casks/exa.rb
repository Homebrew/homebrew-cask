cask 'exa' do
  version '0.4.0'
  sha256 '0b67c6112d393aed09ee73499f864db5688f1210e3ff4e88ab073a369dc3fabb'

  # github.com/ogham/exa was verified as official when first introduced to the cask
  url "https://github.com/ogham/exa/releases/download/v#{version}/exa-osx-x86_64.zip"
  appcast 'https://github.com/ogham/exa/releases.atom',
          checkpoint: '77d34c77c2c3017137c276b6a3de91ffba51b4fe25f26c005382d934954a3e4f'
  name 'exa'
  homepage 'https://bsago.me/exa/'

  binary 'exa-osx-x86_64', target: 'exa'
end
