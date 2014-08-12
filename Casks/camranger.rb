class Camranger < Cask
  version '1.7'
  sha256 '1b00c6315a3bd7766f8cc3855a06853be83e355e34d4fdb80c69e88571bbaef8'

  url "http://www.camranger.com/downloadFiles/CamRanger_#{version.gsub('.', '_')}.zip"
  homepage 'http://www.camranger.com/downloads/#fbox_5594'

  link "#{version}/CamRanger.app"
end
