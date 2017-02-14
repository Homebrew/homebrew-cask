cask 'amazon-chime' do
  version :latest
  sha256 :no_check

  url 'https://clients.chime.aws/mac/latest'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'
end
