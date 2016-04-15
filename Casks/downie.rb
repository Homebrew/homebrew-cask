cask 'downie' do
  version '2.3.1211'
  sha256 '426395c31bde6430c1c94f50e934bff2d8916c637497975c95b8cc28a9534188'

  url "http://trial.charliemonroe.net/downie/Downie_#{version.patch}.zip"
  appcast "http://trial.charliemonroe.net/downie/updates_#{version.major_minor}.xml",
          checkpoint: '2630f98a731e379e7e534a67670745d5bdce0fbe949bf9a69be53705e12a8881'
  name 'Downie'
  homepage 'http://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
