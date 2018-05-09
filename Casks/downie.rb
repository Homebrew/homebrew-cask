cask 'downie' do
  version '3.3.1,1816'
  sha256 '7167f845afa71da15ed69abadd34aea4d71e274faed5424a7f26faf54dc81a54'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: 'efbc97d8225e874dd0ade05948ffed52b3ff6d66c0413d2b6d25a9f0dbdcafd3'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
