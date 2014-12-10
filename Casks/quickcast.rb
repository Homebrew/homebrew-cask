cask :v1 => 'quickcast' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/quickcast-app/mac/QuickCast.dmg'
  appcast 'https://s3.amazonaws.com/quickcast-app/mac/appcast.xml'
  homepage 'http://quickcast.io/'
  license :unknown    # todo: improve this machine-generated value

  app 'QuickCast.app'
end
