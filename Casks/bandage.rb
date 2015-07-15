cask :v1 => 'bandage' do
  version '0.6.1'
  sha256 '6695e065cbc5740bd711590f0d2af1902334727aad6cc38eabb74de299dd9ea7'

  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'
  license :gpl

  app 'Bandage.app'
end
