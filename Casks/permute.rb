cask 'permute' do
  version '3.4.3,2238'
  sha256 'ce5259c6b41c8c3dd7724ecfa5eea5a8905227d9d480e65dda640b4fb55f3a4a'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
