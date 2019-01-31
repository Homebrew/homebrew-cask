cask 'sage' do
  version '8.6,10.14.2'
  sha256 '7a775f9bfdf7f7d106582d6b3c8da438519eeafdee2f9ea92d4df658f9d29594'

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
