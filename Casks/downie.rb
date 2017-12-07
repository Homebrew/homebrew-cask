cask 'downie' do
  version '3.1,1727'
  sha256 'b89c33b2f2c70a405b31ca24022a892fac44b08a12df310f0d8c4adb1c3dc5f1'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: '80e13d8e97f50bd4c9927fe1f2425dcaae2af079080e28d623a1dd2ddb1d69a0'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
