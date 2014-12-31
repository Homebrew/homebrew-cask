cask :v1 => 'quickcast' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/quickcast-app/mac/QuickCast.dmg'
  appcast 'https://s3.amazonaws.com/quickcast-app/mac/appcast.xml'
  homepage 'http://quickcast.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'QuickCast.app'
end
