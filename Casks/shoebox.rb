cask 'shoebox' do
  version '3.2.3'
  sha256 'eedacb0dc3aa4ddacd5447fc2ad280910744ca4d4c270731a87afc92a26de1cd'

  # amazonaws.com/couch-downloads was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/couch-downloads/shoebox/mac/Shoebox%20v#{version}.zip"
  name 'Shoebox'
  homepage 'https://shoeboxapp.com/'

  app 'Shoebox.app'

  zap trash: [
               '~/Library/Application Support/Shoebox',
               '~/Library/Logs/Shoebox',
               '~/Library/Preferences/couchlabs.Shoebox.helper.plist',
               '~/Library/Preferences/couchlabs.Shoebox.plist',
               '~/Library/Saved Application State/couchlabs.Shoebox.savedState',
             ]
end
