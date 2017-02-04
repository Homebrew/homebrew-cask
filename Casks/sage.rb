cask 'sage' do
  if MacOS.version <= :lion
    version '7.2'
    sha256 'f88e0686ae8fe31f2684163a57bea938d93f732842cab7c263ee6e4cdeb271cc'
    # mit.edu/sage was verified as official when first introduced to the cask
    url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version}-OSX_10.7.5-x86_64.app.dmg"
  elsif MacOS.version <= :mavericks
    version '7.2'
    sha256 'a4cd5c6f3207cd9c429642bb58a6310ba05e6da9fddbf36dc1aa5e47c5904c96'
    # mit.edu/sage was verified as official when first introduced to the cask
    url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version}-OSX_10.9.5-x86_64.app.dmg"
  else
    version '7.5.1'
    sha256 '257a48d5b7af19fb6ee18f1a5cd248dbc4153b8c2ee6f6bfbd4e70cbae4f54d8'
    # mit.edu/sage was verified as official when first introduced to the cask
    url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version}-OSX_10.11.6-x86_64.app.dmg"
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
