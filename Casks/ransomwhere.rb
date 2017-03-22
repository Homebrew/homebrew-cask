cask 'ransomwhere' do
  version '1.1.0'
  sha256 '7b18e17abd8fb40d7c25f29f65d64a1f65c758d61c9f67c11d9722d1d7486ea9'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/RansomWhere_#{version}.zip"
  appcast 'https://objective-see.com/products.json',
          checkpoint: 'b2004932186e0eb176a9ac01fe499de292d502d7a17559e900822f9cdbfa74d6'
  name 'RansomWhere'
  homepage 'https://objective-see.com/products/ransomwhere.html'

  installer script: {
                      executable: "#{staged_path}/RansomWhere.app/Contents/MacOS/RansomWhere",
                      args:       ['-install'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "#{staged_path}/RansomWhere.app/Contents/MacOS/RansomWhere",
                      args:       ['-uninstall'],
                      sudo:       true,
                    }
end
