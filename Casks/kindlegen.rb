cask 'kindlegen' do
  version '2.9'
  sha256 '7aad3b01c8f0d61096f86d7ba34e4deeef22355b9dbf2555c6dd05a281f5d17e'

  # kindlegen.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kindlegen.s3.amazonaws.com/KindleGen_Mac_i386_v#{version.dots_to_underscores}.zip"
  name 'KindleGen'
  homepage 'https://www.amazon.com/gp/feature.html?docId=1000765211'

  binary 'kindlegen'

  caveats <<-EOS.undent
    Instructions on using KindleGen are available in

      #{staged_path}/manual.html
  EOS
end
