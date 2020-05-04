cask 'permute' do
  version '3.4.8,2259'
  sha256 '7c9c7cb0c9e52d8afb6cd9e8af8ff9856d4e0f6eb2bf517502856892e3537c14'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
