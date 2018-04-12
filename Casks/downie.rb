cask 'downie' do
  version '3.2.8,1804'
  sha256 '321a2f22edefbcd9aff350823e629b6e78fbddd13b0051566d348856d1972ee3'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: 'f9c4c9e36def3bde0d07b5e5d368f762eec37b8e4f98196605228ceaf8bbb5b6'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
