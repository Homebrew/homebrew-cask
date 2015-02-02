cask :v1 => 'mkvtoolnix' do
  version '7.4'
  sha256 '886e54887e7bba966c2838afb6b6eb98fc9e4ce3853cce9adb05774b826433ef'

  url 'https://www.macupdate.com/download/16837/MKVToolNix-7.4.0.dmg'
  name 'MKVToolnix'
  homepage 'https://www.bunkus.org/videotools/mkvtoolnix'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MKVToolNix-7.4.0.app'
end
