cask 'sage' do
  version '9.0,10.15.2'
  sha256 '79a2a150c1fe10b4b4b4c436fe2eaf27460a902670b0121529f7ccd3500b55d9'

  # mirrors.mit.edu/sage/osx/intel was verified as official when first introduced to the cask
  url "https://mirrors.mit.edu/sage/osx/intel/sage-#{version.before_comma}-OSX_#{version.after_comma}-x86_64.app.dmg"
  appcast 'https://mirrors.mit.edu/sage/osx/intel/index.html'
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
