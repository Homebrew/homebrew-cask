cask 'downie' do
  version '3.1.4,1745'
  sha256 '2758627dd4b2b6bcc52e00c64e731b97f4ca39cc74d24d6936878d77da5c511c'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: '91e08912b025cff408f89878d311561471813311d89957a7ef681851b3274329'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
