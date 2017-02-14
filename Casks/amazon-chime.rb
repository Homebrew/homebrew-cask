cask 'amazon-chime' do
  version '4.0.5522'
  sha256 '1e98838fcb722ab840cc3372a466ef7150c13772ea4a63fc600290df6b7d817e'

  url "https://clients.chime.aws/mac/releases/Chime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: '29229c5f4f18a6ddc2f6201678404eba63a95cc2cc19711d16033af03154e873'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'
end
