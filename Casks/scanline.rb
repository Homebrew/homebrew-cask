cask 'scanline' do
  version '1.1'
  sha256 '3060ab6d3067027e2fbe594ac71ac50893b449a7dca28218ef2df231ef0b76a8'

  url 'https://github.com/klep/scanline/blob/master/build/Products/Debug/scanline?raw=true'
  appcast 'https://github.com/klep/scanline/releases.atom'
  name 'scanline'
  homepage 'https://github.com/klep/scanline'

  binary 'scanline'

  caveats <<~EOS
    This command-line application is not notarized and may need to be "allowed" on first run via:
        System Preferences → Security & Privacy → General
  EOS
end
