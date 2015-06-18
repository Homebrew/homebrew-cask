cask :v1 => 'praat' do
  version '5.4.08'

  if Hardware::CPU.is_32_bit?
    sha256 '2a64f314b24a9ad516f8dba075d73278a31660966a10a207a4f3342f7bd3edb7'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac32.dmg"
  else
    sha256 '3f6862f63ae9e98f60bbf25b709ba60e77d0140b0caa6fbd4ddd86d3eadb98c8'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac64.dmg"
  end

  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
