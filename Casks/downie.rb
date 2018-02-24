cask 'downie' do
  version '3.2.1,1774'
  sha256 '4ad2cca93c920521dccfde516b84dfefcfd540e05da2ff9909fc0dd26914beba'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: 'd2791dee38ccf5e052b8606720e5e576a8647a27ac5019cf1873f186fb594316'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
