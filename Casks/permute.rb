cask 'permute' do
  version '3.1.8,2115'
  sha256 'b7f97f7014b81cdf829bd39f2b368bf6c5e934b782c6d78a93a0c048e47830f3'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
