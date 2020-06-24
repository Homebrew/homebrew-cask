cask 'permute' do
  version '3.4.12,2270'
  sha256 '7e9cddce0baa7a8f004be635f38bf2a97cbd7cc991a35c48a769743ecc2c5f9d'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
