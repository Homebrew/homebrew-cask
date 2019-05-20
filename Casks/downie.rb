cask 'downie' do
  version '3.7.2,2010'
  sha256 '57d3bec15d63f97c043a79ee70996ebdfb628980074e35662302764ffeb42e40'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
