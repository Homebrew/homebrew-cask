cask :v1 => 'supersync' do
  version :latest
  sha256 :no_check

  url 'https://supersync.com/downloads/SuperSync.app.zip'
  homepage 'http://supersync.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SuperSync.app'
end
