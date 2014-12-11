cask :v1 => 'supersync' do
  version :latest
  sha256 :no_check

  url 'https://supersync.com/downloads/SuperSync.app.zip'
  homepage 'http://supersync.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'SuperSync.app'
end
