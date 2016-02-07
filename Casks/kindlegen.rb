cask 'kindlegen' do
  version '2.9'
  sha256 '7aad3b01c8f0d61096f86d7ba34e4deeef22355b9dbf2555c6dd05a281f5d17e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://kindlegen.s3.amazonaws.com/KindleGen_Mac_i386_v#{version.gsub('.', '_')}.zip"
  name 'KindleGen'
  homepage 'https://www.amazon.com/gp/feature.html?docId=1000765211'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  binary 'kindlegen'
end
