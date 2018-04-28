cask 'downie' do
  version '3.3,1813'
  sha256 '4caa529b6017c61ab398d92ecf64611aec129542809cbb0a99cf3fa7ccbb99bf'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: 'b1cb390702e606b3c4d54ffafbcab178222bada6491397cb6a2fe530ea0cf15f'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
