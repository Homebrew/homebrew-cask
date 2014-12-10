cask :v1 => 'filosync' do
  version :latest
  sha256 :no_check

  url 'http://www.filosync.com/mac/Filosync.zip'
  homepage 'http://www.filosync.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Filosync.app'
end
