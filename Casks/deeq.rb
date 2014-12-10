cask :v1 => 'deeq' do
  version :latest
  sha256 :no_check

  url 'http://dl.bithavoc.io/deeq/releases/latest.dmg'
  homepage 'http://deeqapp.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Deeq.app'
end
