cask 'downie' do
  version '3.1.5,1749'
  sha256 '64925cae531bf0e9e59d8a4f7d8ce4b1f395bea9e6dba87999711b7ec8a6a9a6'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: '3e5e2de5facbd979275ccf514b24772bd39f19e49167eb28fbe080a147bfad89'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
