cask 'downie' do
  version '4.0.9,4098'
  sha256 '93ed4f8a0741c56c8c389d27a769589b4c1abd02358b81604cecefe9fb8577da'

  # charliemonroesoftware.com/ was verified as official when first introduced to the cask
  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://charliemonroesoftware.com/trial/downie/v#{version.major}/updates.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
