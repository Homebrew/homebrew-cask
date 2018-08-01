cask 'downie' do
  version '3.4,1853'
  sha256 'b60717dcc1e80dd95103c353e4955760b417bcf4dddc2192843dc9e8cb1a2bf9'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
