cask 'downie' do
  version '3.4.3,1874'
  sha256 'd3518030149f3c6b2fb7080b2388efff7a90b24a68fe46f23e6eb4ac08992bd1'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
