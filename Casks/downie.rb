cask 'downie' do
  version '3.4.8,1894'
  sha256 'c1a633c5e7fc9059bb47ab59488c54e574dde2830436575aadcd7049d7018d1e'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
