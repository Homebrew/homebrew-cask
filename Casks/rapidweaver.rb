cask 'rapidweaver' do
  version '7.4.1,18708.1496675639'
  sha256 'be4336a72fd659f8a7706e482e74e5a4a8b026f02542d5f6278e30ff7909df5f'

  # devmate.com/com.realmacsoftware.rapidweaver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver/#{version.after_comma.major}/#{version.after_comma.minor}/RapidWeaver-#{version.after_comma.major}.zip"
  appcast 'https://updates.devmate.com/com.realmacsoftware.rapidweaver.xml',
          checkpoint: 'eab532b0ac3a667aa4b1f43581144a62d6e1229f93ae5451659d5c44ddb1398a'
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :leopard'

  app "RapidWeaver #{version.major}.app"
end
