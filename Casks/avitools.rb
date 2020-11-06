cask "avitools" do
  version "3.7.2"
  sha256 "2a338b816efe6b861da3131cd263a99aebee7bb3e63459a600c901c1c1cfa0a7"

  url "http://www.emmgunn.com/downloads/avitools#{version}.zip"
  appcast "http://www.emmgunn.com/avitools-home/avitools-downloads/"
  name "AVItools"
  desc "Graphical interface for a variety of video file processing tools"
  homepage "http://www.emmgunn.com/avitools-home/"

  app "avitools#{version}/AVItools.app"
end
