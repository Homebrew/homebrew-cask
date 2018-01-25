cask 'calq' do
  version '1.4.6'
  sha256 '3e12d3fe2aea2df0483e91081ff24558b7382bf7390b07ab9bd0b5912627ef86'

  url "http://www.katoemba.net/download/Calq-#{version}.dmg.gz"
  name 'Calq'
  homepage 'http://www.katoemba.net/makesnosenseatall/calq/'

  app 'Calq.app'

  zap trash: '~/Library/Preferences/com.katoemba.calq.plist'
end
