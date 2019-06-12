cask 'downie' do
  version '3.7.6,2023'
  sha256 '8a086529771b18b4ef6c5e525982b1b81a6c573ef1bbd0b0b5bca272ab01bd2e'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
