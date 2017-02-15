cask 'mt32emu' do
  version '2.0.0'
  sha256 'b0a8434a6de660725723bd822c00a2bbb24c06ee9f2fd994961fa3dbb1b1bbd1'

  url "https://downloads.sourceforge.net/munt/munt/#{version}/OS%20X/MT32Emu-qt-1.4.0.dmg"
  appcast "https://sourceforge.net/projects/munt/rss?path=/munt",
          checkpoint: '84b7ecd3cafd0ff1e4ab1ec372e0e705bcde4eb9a9e3373d16a52c56d83c05a2'
  name 'MT32Emu'
  homepage 'https://sourceforge.net/projects/munt/'

  app 'MT32Emu.app'
end
