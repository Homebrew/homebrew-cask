cask :v1 => 'camranger' do
  version '1.8.7'
  sha256 'da68eeb0a19edf5a1658aee119ca37443dbe9af5d39c45f5fa34c3956fcdf29b'

  url "http://www.camranger.com/downloadFiles/CamRanger_#{version.gsub('.', '_')}.dmg"
  name 'CamRanger'
  homepage 'http://www.camranger.com/downloads/#fbox_5594'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "#{version}/CamRanger.app"
end
