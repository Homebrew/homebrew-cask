cask 'sage' do
  version '8.7,10.13.6'
  sha256 'e632dec0e0f2a71d35ad240b8c03c83af8b8bfe0acfa1c897d75a2de82481929'

  # mirrors.mit.edu/sage/osx/intel was verified as official when first introduced to the cask
  url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version.before_comma}-OSX_#{version.after_comma}-x86_64.app.dmg"
  name 'Sage'
  homepage 'https://www.sagemath.org/'

  depends_on macos: '>= :high_sierra'

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
