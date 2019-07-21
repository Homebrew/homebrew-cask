cask 'downie' do
  version '3.7.9,2040'
  sha256 '71cdf7b37a09a17f2ace8e1cf2065c711ebb7b5ed5f8342e49927c7ddd724336'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
