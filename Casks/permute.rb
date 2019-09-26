cask 'permute' do
  version '3.3.5,2202'
  sha256 '18e1b5349ac31cf489aaa7eca13ebf55e5d9c0953ef2435f3d5bd2027d167c91'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
