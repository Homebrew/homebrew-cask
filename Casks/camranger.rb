cask :v1 => 'camranger' do
  version '1.8'
  sha256 'fe27f11d08df3119d99c5b72b8a5214f5a34e491b43943bfc2b2f1fde905882d'

  url "http://www.camranger.com/downloadFiles/CamRanger_#{version.gsub('.', '_')}.zip"
  name 'CamRanger'
  homepage 'http://www.camranger.com/downloads/#fbox_5594'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "#{version}/CamRanger.app"
end
