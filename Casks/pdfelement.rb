cask 'pdfelement' do
  version '6.7.12,2991'
  sha256 'a4fd5421b98d00fb2433c9d64e2f29962d39dadf64e25d98e31325cdab37a711'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "PDFelementStd#{version.major}.app", target: "PDFelement #{version.major}.app"
end
