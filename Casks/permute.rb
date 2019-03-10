cask 'permute' do
  version '3.1.4,2102'
  sha256 '7c602dcc1295366f2ed2c86c97d9ca59ba03e16e42c6539f35fe95dd831f8fb0'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
