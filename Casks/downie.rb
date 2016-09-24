cask 'downie' do
  version '2.5.1,1315'
  sha256 '85bc2bde072ff09dd8e60c466603d7db53b27559574dafd1c5f14883d9194b9a'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '0afdfd5ab1bcd1944bc28d27b462f05a2f5b29fd7a18795bae68cc7a9fad9cd9'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
