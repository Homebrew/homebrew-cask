cask 'pdfelement' do
  version '6.4.6,2991'
  sha256 'd02f6b0098882aa1ab9476b80b4b73b070f9748690007638e88348dc36337742'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "PDFelementStd#{version.major}.app", target: "PDFelement #{version.major}.app"
end
