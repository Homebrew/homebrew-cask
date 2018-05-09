cask 'sage' do
  if MacOS.version <= :mavericks
    version '7.2,10.9.5'
    sha256 'a4cd5c6f3207cd9c429642bb58a6310ba05e6da9fddbf36dc1aa5e47c5904c96'
  elsif MacOS.version <= :el_capitan
    version '7.6,10.11.6'
    sha256 'ba9ffba5dea394dc808c31a7b71af4d0db9759d9440b4dc2e35c921bd03e916f'
  elsif MacOS.version <= :sierra
    version '8.1,10.12.6'
    sha256 'bd795369398873ccd26bae7e4ccc67370799d3038bebab911a626f496eba6d33'
  else
    version '8.2,10.13.4'
    sha256 '3ff17cd1fe99295eb7a7dff2cd49be4f7703a3c605d87aa1601239f7ed14c4aa'
  end

  # mirrors.mit.edu/sage/osx/intel was verified as official when first introduced to the cask
  url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version.before_comma}-OSX_#{version.after_comma}-x86_64.app.dmg"
  name 'Sage'
  homepage 'https://www.sagemath.org/'

  depends_on macos: '>= :lion'

  app "SageMath-#{version.before_comma}.app"
  binary "#{appdir}/SageMath-#{version.before_comma}.app/Contents/Resources/sage/sage"

  uninstall quit: 'org.sagemath.Sage'

  zap trash: [
               '~/.sage',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sagemath.sage.sfl*',
               '~/Library/Logs/sage.log',
               '~/Library/Preferences/org.sagemath.Sage.plist',
             ]
end
