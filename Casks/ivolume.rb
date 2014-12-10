cask :v1 => 'ivolume' do
  version :latest
  sha256 :no_check

  url 'http://www.mani.de/download/ivolume/iVolume3Mac.dmg'
  homepage 'http://www.mani.de/en/ivolume/'
  license :unknown    # todo: improve this machine-generated value

  app 'iVolume.app'
end
