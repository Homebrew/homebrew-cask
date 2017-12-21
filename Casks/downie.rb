cask 'downie' do
  version '3.1,1730'
  sha256 'b3fd6c2d75b0fd6ca28481e918c90205fdb16502b5a208d188704e901c06691f'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: 'ce0f33e7dba3c676d4c4517e897dbbdd31fe4f3b35a464cd396009142ec63a0a'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
