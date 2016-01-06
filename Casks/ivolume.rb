cask 'ivolume' do
  version :latest
  sha256 :no_check

  url 'https://www.mani.de/download/ivolume/iVolume3Mac.dmg'
  name 'iVolume'
  homepage 'https://www.mani.de/en/ivolume/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iVolume.app'
end
