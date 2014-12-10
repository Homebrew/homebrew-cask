cask :v1 => 'invisionsync' do
  version :latest
  sha256 :no_check

  url 'http://www.invisionapp.com/app/InVisionSync.zip'
  homepage 'http://invisionapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'InVisionSync.app'
end
