cask 'permute' do
  version '3.1.3,2098'
  sha256 '592685e98b120d5a0abe88f836974d7bc4fddfdc5ee5fd981f46cd6c2b9960f8'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
