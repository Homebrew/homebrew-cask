cask 'permute' do
  version '3.4,2224'
  sha256 'dbc1716d67f29b72dd1b53754bf6b94a1ec3c90afc7cd4ec60e6d0c274cbef6c'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
