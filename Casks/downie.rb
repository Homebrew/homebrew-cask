cask 'downie' do
  version '3.3.9,1843'
  sha256 '4aa07e43856096bc34a809fbc4ee2fc7b106bcbf01f7bdd9b2b9332997607e21'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
