cask 'permute' do
  version '3.4.2,2234'
  sha256 'f4a621d6cc7f29c78c49dccd1704cd63c133d14b0e88b09ea5d54b8d1e9995d6'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
