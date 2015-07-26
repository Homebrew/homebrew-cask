cask :v1 => 'mirrordisplays' do
  version :latest
  sha256 :no_check

  # github.com is the official download host per the vendor homepage
  url 'https://github.com/fcanas/mirror-displays/releases/download/1.0/MirrorDisplays.zip'
  name 'Mirror Displays'
  homepage 'http://www.fabiancanas.com/Projects/MirrorDisplays'
  appcast 'https://github.com/fcanas/mirror-displays/releases.atom'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MirrorDisplays.app'
end
