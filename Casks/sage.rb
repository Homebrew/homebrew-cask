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
    version '7.3'
    sha256 'c8984ccbe870447d4c470aabbdf0885e31a39ceab055e1a0e0c9a29508fff943'
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
