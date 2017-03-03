cask 'eclipse-smarthome-designer' do
  version '0.8.0'
  sha256 '348d27b7c11ae188b0bd80c9f6330952731ea73e39213e89408dff3663931c65'

  url "https://eclipse.org/downloads/download.php?file=/smarthome/releases/#{version}/eclipsesmarthome-incubation-#{version}-designer-macosx64.zip&r=1"
  name 'Eclipse SmartHome Designer'
  homepage 'https://www.eclipse.org/smarthome/documentation/community/downloads.html'

  app 'Eclipse SmartHome Designer.app'

  zap delete: [
                '~/Library/Caches/org.eclipse.smarthome.designer.product',
                '~/Library/Preferences/org.eclipse.smarthome.designer.product.plist',
              ]
end
