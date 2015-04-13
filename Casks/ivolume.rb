cask :v1 => 'ivolume' do
  version :latest
  sha256 :no_check

  url 'http://www.mani.de/download/ivolume/iVolume3Mac.dmg'
  name 'iVolume'
  homepage 'http://www.mani.de/en/ivolume/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iVolume.app'
end
