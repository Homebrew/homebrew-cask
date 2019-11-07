cask 'downie' do
  version '3.8.10,2090'
  sha256 '5477cc852e85a7b79ad4a78bed97683843a2b0f89448451853fd1b2f006aef91'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
