cask 'rapidweaver' do
  version '7.5.2,18795.1507885111'
  sha256 '043110fb69a20e7f839989641841f494a7412bccd6615cb66a0b587a4e26d763'

  # devmate.com/com.realmacsoftware.rapidweaver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver/#{version.after_comma.major}/#{version.after_comma.minor}/RapidWeaver-#{version.after_comma.major}.zip"
  appcast 'https://updates.devmate.com/com.realmacsoftware.rapidweaver.xml',
          checkpoint: '505de31ff607478affdc18ccf875bdecac28d62f389407ed32f1bd0ea4e136f9'
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :el_capitan'

  app "RapidWeaver #{version.major}.app"
end
