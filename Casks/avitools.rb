cask "avitools" do
  version "3.7.2"
  sha256 "2a338b816efe6b861da3131cd263a99aebee7bb3e63459a600c901c1c1cfa0a7"

  url "https://www.emmgunn.com/downloads/avitools#{version}.zip"
  name "AVItools"
  desc "Graphical interface for a variety of video file processing tools"
  homepage "https://www.emmgunn.com/avitools-home/"

  livecheck do
    url "https://www.emmgunn.com/avitools-home/avitools-downloads/"
    regex(%r{href=.*?/avitools(\d+(?:\.\d+)+)\.zip}i)
  end

  app "avitools#{version}/AVItools.app"

  zap trash: [
    "~/Library/Application Support/EmmGunn",
    "~/Library/Preferences/com.emmgunn.AVItools#{version.major}.plist",
  ]
end
