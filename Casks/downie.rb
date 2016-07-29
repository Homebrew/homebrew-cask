cask 'downie' do
  version '2.4.1265'
  sha256 'd8c56ed6707bb889a63147b1ea22bef9ef1c76725380e774d4f5ca3152516755'

  url "http://trial.charliemonroe.net/downie/Downie_#{version.patch}.zip"
  appcast 'http://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '69c1ec419557f5101dfcca6b5036fede6b6ce7cd3da7ec9d95435b44ade45e15'
  name 'Downie'
  homepage 'http://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
