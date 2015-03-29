cask :v1 => 'blast2go' do
  version '3.0'
  sha256 '79ca1eadae292c55c0b9df5b6a97b727536ee835b90d8ca4f764eb9954c54c18'

  url 'http://download.blast2go.com/html/software/blast2go/latest/3_0/Blast2GO_macos_3_0.dmg'
  name 'Blast2GO'
  homepage 'https://www.blast2go.com/'
  license :unknown

  installer :manual => 'Blast2GO Installer.app'

  uninstall :delete => '/Applications/Blast2GO'
end
