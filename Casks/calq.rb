cask 'calq' do
  version '1.4.6'
  sha256 '3e12d3fe2aea2df0483e91081ff24558b7382bf7390b07ab9bd0b5912627ef86'

  url "http://www.katoemba.net/download/Calq-#{version}.dmg.gz"

  # This is a horrible hack to force the file extension.  The
  # backend code should be fixed so that this is not needed.
  preflight do
    system '/bin/mv', '--', staged_path.join("Calq-#{version}"), staged_path.join("Calq-#{version}.dmg")
  end
  container :nested => "Calq-#{version}.dmg"

  name 'Calq'
  homepage 'http://www.katoemba.net/makesnosenseatall/calq/'
  license :gratis

  app 'Calq.app'

  zap :delete => '~/Library/Preferences/com.katoemba.calq.plist'
end
