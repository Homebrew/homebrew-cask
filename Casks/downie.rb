cask 'downie' do
  version '3.9.7,3027'
  sha256 '23966765b30f4502473435171b3e78f0db7cee3ecbcd4d86c64a92a64c5d6fa2'

  # charliemonroesoftware.com was verified as official when first introduced to the cask
  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/downie/v#{version.major}/updates.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
