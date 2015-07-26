cask :v1 => 'mirrordisplays' do
  version :latest
  sha256 :no_check

  url 'https://github.com/fcanas/mirror-displays/releases/download/1.0/MirrorDisplays.zip',
    :referer => 'http://www.fabiancanas.com/Projects/MirrorDisplays'
  name 'Mirror Displays'
  homepage 'http://www.fabiancanas.com/Projects/MirrorDisplays'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MirrorDisplays.app'
end
