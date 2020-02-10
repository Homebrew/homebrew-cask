cask 'downie' do
  version '3.9.9,3033'
  sha256 '307cb5fa6dbe6cf6dd1ebbe3ca0e76981b28ffc4cba465d96ff10dabaa7bd858'

  # charliemonroesoftware.com was verified as official when first introduced to the cask
  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/downie/v#{version.major}/updates.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
