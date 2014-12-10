cask :v1 => 'sixtyforce' do
  version :latest
  sha256 :no_check

  url 'http://sixtyforce.com/download/sixtyforce.zip'
  homepage 'http://sixtyforce.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'sixtyforce.app'
end
