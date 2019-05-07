cask 'permute' do
  version '3.2.2,2131'
  sha256 'b95b335db29af52fb31e770da1af596d76b0e835375b87d16fdb18938c045b23'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
