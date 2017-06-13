cask 'sage' do
  if MacOS.version <= :mavericks
    version '7.2'
    sha256 'a4cd5c6f3207cd9c429642bb58a6310ba05e6da9fddbf36dc1aa5e47c5904c96'
    # mit.edu/sage was verified as official when first introduced to the cask
    url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version}-OSX_10.9.5-x86_64.app.dmg"
  elsif MacOS.version <= :el_capitan
    version '7.6'
    sha256 'ba9ffba5dea394dc808c31a7b71af4d0db9759d9440b4dc2e35c921bd03e916f'
    # mit.edu/sage was verified as official when first introduced to the cask
    url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version}-OSX_10.11.6-x86_64.app.dmg"
  else
    version '7.6'
    sha256 'dbd5e79825ad505dbf852c8c794cd604a3bd560151fb3ec08a9df7f9c5626ab2'
    # mit.edu/sage was verified as official when first introduced to the cask
    url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version}-OSX_10.12.3-x86_64.app.dmg"
  end

  name 'Sage'
  homepage 'https://www.sagemath.org/'

  depends_on macos: '>= :lion'

  app "SageMath-#{version}.app"
  binary "#{appdir}/SageMath-#{version}.app/Contents/Resources/sage/sage"

  zap delete: [
                '~/.sage',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sagemath.sage.sfl',
                '~/Library/Logs/sage.log',
                '~/Library/Preferences/org.sagemath.Sage.plist',
              ]
end
