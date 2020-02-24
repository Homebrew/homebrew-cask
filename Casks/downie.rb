cask 'downie' do
  version '3.9.10,3036'
  sha256 '27703ed74006936dd5c127305ebf33269b1f8c502a36c95a96dea1c881031fef'

  # charliemonroesoftware.com was verified as official when first introduced to the cask
  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/downie/v#{version.major}/updates.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
