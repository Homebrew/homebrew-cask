cask 'pdfelement' do
  version '6.5.0,2991'
  sha256 '756053abfb014e25bf3e6409c7c6db75d143ddc999501d018e36f84daa4d5b3e'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "PDFelementStd#{version.major}.app", target: "PDFelement #{version.major}.app"
end
