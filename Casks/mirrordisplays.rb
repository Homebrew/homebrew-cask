cask :v1 => 'mirrordisplays' do
  version :latest
  sha256 :no_check

  url 'http://www.fabiancanas.com/downloads/MirrorDisplays.zip',
    :referer => 'http://www.fabiancanas.com/Projects/MirrorDisplays'
  homepage 'http://www.fabiancanas.com/Projects/MirrorDisplays'
  license :unknown    # todo: improve this machine-generated value

  app 'MirrorDisplays.app'
end
