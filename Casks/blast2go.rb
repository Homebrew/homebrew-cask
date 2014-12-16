cask :v1 => 'blast2go' do
  version '3.0'
  sha256 '7bb741384c7cca3f26e0f1fcc7d3de84f084c8902787c6498a67dbef84ae3053'

  url 'http://download.blast2go.com/html/software/blast2go/latest/3_0/Blast2GO_macos_3_0.dmg'
  name 'Blast2GO'
  homepage 'https://www.blast2go.com/'
  license :unknown

  installer :manual => 'Blast2GO Installer.app'
end
