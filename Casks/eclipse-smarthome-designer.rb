cask 'eclipse-smarthome-designer' do
  version '0.9.0'
  sha256 'fd46c514f23f3b4f86c20e7557c2eb82debd1f1060fa751b07306ec93a1fa77e'

  url "https://eclipse.org/downloads/download.php?file=/smarthome/releases/#{version}/eclipsesmarthome-incubation-#{version}-designer-macosx64.zip&r=1"
  name 'Eclipse SmartHome Designer'
  homepage 'https://www.eclipse.org/smarthome/documentation/community/downloads.html'

  app 'Eclipse SmartHome Designer.app'

  zap trash: [
               '~/Library/Caches/org.eclipse.smarthome.designer.product',
               '~/Library/Preferences/org.eclipse.smarthome.designer.product.plist',
             ]
end
