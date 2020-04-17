cask 'permute' do
  version '3.4.7,2252'
  sha256 '769f9f76b6cfc0a0381ecf0a3660fd7ddcbbb2c58596442e0d0ef525e28a8319'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
