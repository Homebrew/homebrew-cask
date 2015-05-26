cask :v1 => 'mirrordisplays' do
  version :latest
  sha256 :no_check

  url 'http://www.fabiancanas.com/downloads/MirrorDisplays.zip',
    :referer => 'http://www.fabiancanas.com/Projects/MirrorDisplays'
  name 'Mirror Displays'
  homepage 'http://www.fabiancanas.com/Projects/MirrorDisplays'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MirrorDisplays.app'
end
