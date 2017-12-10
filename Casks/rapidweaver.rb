cask 'rapidweaver' do
  version '7.5.4,18811.1511975403'
  sha256 'b25ae4b3fd9e51270c1c9f1a348174ba53c447903975f96a96c0c82711dce6a1'

  # devmate.com/com.realmacsoftware.rapidweaver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver/#{version.after_comma.major}/#{version.after_comma.minor}/RapidWeaver-#{version.after_comma.major}.zip"
  appcast 'https://updates.devmate.com/com.realmacsoftware.rapidweaver.xml',
          checkpoint: '83fc8fff13ae051c2ce7c6b78fc2792c085602c1c695e95da88dd356464a4385'
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :el_capitan'

  app "RapidWeaver #{version.major}.app"
end
