cask 'stretchly' do
  version '0.7.0'
  sha256 'b6958ccbb3e33afcd8b9484bdd25f3d15cfb204faa780b55783c6726c14e928e'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: 'dd45ca7702c61033305c5a750ca2afd55244c268598332279c8502ab9b45153d'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
