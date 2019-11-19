cask 'sage' do
  version '8.9,10.14.6'
  sha256 '48dfbd697eaadb77913f8a57e01444e45826bdfeabf5e27ba1bc215c4cbd1764'

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
