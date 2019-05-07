cask 'downie' do
  version '3.7.1,2005'
  sha256 '2e0ecc812b973f7919e750e7d1f072d800660c6a282577fb5f5a6b22ba0f1a5f'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
