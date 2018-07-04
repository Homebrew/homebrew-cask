cask 'downie' do
  version '3.3.8,1839'
  sha256 '72150202fc3ee2392933e07687bb337eb631560c520f1a197724b9a9f6270e85'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
