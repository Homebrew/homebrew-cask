cask :v1 => 'inform' do
  version '7.6L38'
  sha256 '79a478600bbcb10347711794349c19c12ce8109a701e3aa737f638f6d4e9127b'

  url "http://inform7.com/download/content/#{version.split('.')[1]}/I#{version.gsub('.','-')}-OSX.dmg"
  name 'Inform'
  homepage 'http://inform7.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Inform.app'
end
