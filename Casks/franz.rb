cask 'franz' do
  version '5.0.0-beta.13'
  sha256 'b2e4f009bc2f6f15878e7da5ee97c37341c781dc21a207f43fbf49be8f6f2a7c'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom',
          checkpoint: '1db83473dd94a737718aa21c2334bc7a4f0df979718c3b5be5998d8ff478d5a4'
  name 'Franz'
  homepage 'https://meetfranz.com/'

  app 'Franz.app'
end
