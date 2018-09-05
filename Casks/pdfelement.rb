cask 'pdfelement' do
  version '6.6.1,2991'
  sha256 '6b1b9f11608486a1f1f8c5d4c5580a4e5e1e4a8fdc0f46e3f6654b1aa83df8b9'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "PDFelementStd#{version.major}.app", target: "PDFelement #{version.major}.app"
end
