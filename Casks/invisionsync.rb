cask :v1 => 'invisionsync' do
  version :latest
  sha256 :no_check

  url 'http://www.invisionapp.com/app/InVisionSync.zip'
  homepage 'http://invisionapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'InVisionSync.app'
end
