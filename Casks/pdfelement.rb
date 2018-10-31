cask 'pdfelement' do
  version '6.7.6,2991'
  sha256 'ac293559a0d770ee1278cc87850ef795d45145dae404c17e95fb7dff96666d89'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "PDFelementStd#{version.major}.app", target: "PDFelement #{version.major}.app"
end
