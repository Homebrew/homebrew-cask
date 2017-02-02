cask 'grandtotal' do
  version '4.3.5'
  sha256 'f90a63995a8507c27f1fa9c7cbeb2a06f677e97e38f6f1ff9b3e419813b3439f'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '0ab601051c763c30fadc01b1d0e95f26a8faf08095c9c6491ca5b6cc6d033113'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
