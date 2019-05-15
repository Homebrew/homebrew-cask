cask 'permute' do
  version '3.2.3,2135'
  sha256 '4f02c473bc116531b9f8d287a58b3aa315d90a456e5c0c6d51d00cf11a7c4f71'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
