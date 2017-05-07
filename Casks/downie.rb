cask 'downie' do
  version '2.8.5,1467'
  sha256 'edcbddf62335840ed14bd6714fbd4508e8de41453986903e5c7773647383dbb6'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: 'f830eae7dbd8e3b52c7afdc3472d571a0e22c347ee1688a7b907d00cba91c646'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
