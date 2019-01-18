cask 'downie' do
  version '3.5.8,1934'
  sha256 'a7258d51f60f972b4d898026998611d2e8293fd1eb9be1c26733c2487ed34bd1'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
