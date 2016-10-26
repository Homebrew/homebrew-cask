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
    version '7.4'
    sha256 '99ba664250755f14bf98bb149d9b59d80b9e1612897353c70fb8e1388a090315'
    # mit.edu/sage was verified as official when first introduced to the cask
    url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version}-OSX_10.11.6-x86_64.app.dmg"
  end

  name 'Sage'
  homepage 'https://www.sagemath.org/'

  depends_on macos: '>= :lion'
  depends_on arch: :x86_64

  app "SageMath-#{version}.app"
  binary "#{appdir}/SageMath-#{version}.app/Contents/Resources/sage/sage"

  zap delete: [
                '~/.sage',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sagemath.sage.sfl',
                '~/Library/Logs/sage.log',
                '~/Library/Preferences/org.sagemath.Sage.plist',
              ]

  caveats do
    files_in_usr_local
  end
end
