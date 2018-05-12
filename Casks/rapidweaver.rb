cask 'rapidweaver' do
  version '7.5.5,18814.1513161980'
  sha256 '0da43f39cc2d16bda314cf8e57faddb7660068b315281c21b99a836323b29fd0'

  # devmate.com/com.realmacsoftware.rapidweaver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver/#{version.after_comma.major}/#{version.after_comma.minor}/RapidWeaver-#{version.after_comma.major}.zip"
  appcast 'https://updates.devmate.com/com.realmacsoftware.rapidweaver.xml',
          checkpoint: 'b079c3ecc4cc455a84dcd3f49edb575d18b3556165c558f4e5b8d42f15ffa709'
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :el_capitan'

  app "RapidWeaver #{version.major}.app"
end
