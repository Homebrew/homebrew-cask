cask :v1 => 'filosync' do
  version :latest
  sha256 :no_check

  url 'http://www.filosync.com/mac/Filosync.zip'
  homepage 'http://www.filosync.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Filosync.app'
end
