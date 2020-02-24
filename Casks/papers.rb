cask 'papers' do
  version '4.0.7'
  sha256 '8c63a193ced25c92db168e415b3a537efb828c86bd62b7615bc95508d3532801'

  url 'https://download.readcube.com/app/Install%20Papers.pkg'
  name 'ReadCube Papers'
  homepage 'https://www.readcube.com/home'

  pkg 'Install Papers.pkg'

  uninstall pkgutil: 'com.papersapp.PapersInstaller'

  zap trash: [
               '~/Library/Preferences/com.ReadCube.Papers.plist',
               '~/Library/Caches/com.ReadCube.Papers.ShipIt',
               '~/Library/Saved Application State/com.ReadCube.Papers.savedState',
               '~/Library/Caches/com.ReadCube.Papers',
             ]
end
