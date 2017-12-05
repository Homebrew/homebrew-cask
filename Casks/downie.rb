cask 'downie' do
  version '3.1,1725'
  sha256 '716fca2304ad151b403d283426529a52950d71f2a06dcb01b241eddf34659529'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: '6ea56d16b17a49fcbc08b511e3ba720de95ba02e23f651ec587f82dee3caf17f'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
