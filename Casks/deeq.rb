cask :v1 => 'deeq' do
  version :latest
  sha256 :no_check

  url 'http://dl.bithavoc.io/deeq/releases/latest.dmg'
  homepage 'http://deeqapp.com'
  license :unknown

  app 'Deeq.app'
end
