cask :v1 => 'deeq' do
  version :latest
  sha256 :no_check

  url 'http://dl.bithavoc.io/deeq/releases/latest.dmg'
  homepage 'http://deeqapp.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Deeq.app'
end
