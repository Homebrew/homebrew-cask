cask 'pdfelement' do
  version '6.7.6,2991'
  sha256 'e7296f745924835f8b325d3c326bcf189c3255e69470b8fb4df3a68dfed4d477'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "PDFelementStd#{version.major}.app", target: "PDFelement #{version.major}.app"
end
