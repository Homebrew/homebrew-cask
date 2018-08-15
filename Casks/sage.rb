cask 'sage' do
  if MacOS.version == :el_capitan
    version '8.2,10.11.6'
    sha256 'f40867a8262b018550e449c4ca8c964cebde0776d8d02a83c91102a903726afe'
  elsif MacOS.version == :sierra
    version '8.1,10.12.6'
    sha256 'bd795369398873ccd26bae7e4ccc67370799d3038bebab911a626f496eba6d33'
  else
    version '8.3,10.13.6'
    sha256 'e2168405cac8a61562933b7523a7b124a4ca4aed1fbd531db2a99851b013f157'
  end

  # mirrors.mit.edu/sage/osx/intel was verified as official when first introduced to the cask
  url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version.before_comma}-OSX_#{version.after_comma}-x86_64.app.dmg"
  name 'Sage'
  homepage 'https://www.sagemath.org/'

  depends_on macos: '>= :el_capitan'

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
