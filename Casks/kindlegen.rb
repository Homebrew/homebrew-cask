cask :v1 => 'kindlegen' do
  version '2.9'
  sha256 '45e5feac97f0590038a911fffd7d332973d88a40ad52135dce89afed33e7236c'

  url "https://kindlegen.s3.amazonaws.com/KindleGen_Mac_i386_v#{version.gsub('.', '_')}.zip"
  homepage 'http://www.amazon.com/gp/feature.html?docId=1000765211'
  license :unknown

  binary "KindleGen_Mac_i386_v#{version.gsub('.', '_')}/kindlegen"
end
