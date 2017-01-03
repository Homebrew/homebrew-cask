cask 'grandtotal' do
  version '4.3.4'
  sha256 '53084ab7f19ef5c893ba16785e83b08dad33b6261a2666de4752412a885e19cd'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '31f15642dedf6080e6bdfa99748e09ccc34979266bf5964b05976e6a2eec5302'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
