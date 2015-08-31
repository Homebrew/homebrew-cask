cask :v1 => 'adobe-photoshop-cc' do
  version '2015'
  sha256 'c5a30a102299215b7df7e0cc519d3d63c20a63b0fecf54bc41eb68061c96dec7'

  url 'http://trials3.adobe.com/AdobeProducts/PHSP/16/osx10/Photoshop_16_LS20.dmg',
    :user_agent => :fake,
    :cookies => { 'MM_TRIALS' => '1234' }
  name 'Adobe Photoshop CC 2015'
  homepage 'https://www.adobe.com/products/photoshop.html'
  license :commercial

  installer :script => 'Adobe Photoshop CC 2015/Install.app/Contents/MacOS/Install',
            :args => %w[--mode=silent --deploymentFile='Adobe\ Photoshop\ CC\ 2015/Deployment/en_US_Deployment.xml']

#  uninstall_preflight  (create uninstall.xml)

  uninstall :script => 'Adobe Photoshop CC 2015/Install.app/Contents/MacOS/Install',
            :args => %w[--mode=silent --deploymentFile='uninstall.xml']
end