cask 'sage' do
  if MacOS.version == :el_capitan
    version '8.3,10.11.6'
    sha256 '71bc5b85ffa251a6db38f27feec7eb725a2745ab769b752b55dca34ec8c75417'
  elsif MacOS.version == :sierra
    version '8.1,10.12.6'
    sha256 'bd795369398873ccd26bae7e4ccc67370799d3038bebab911a626f496eba6d33'
  else
    version '8.4,10.13.6'
    sha256 '80c9ee79321afc75dea6342af4dadfad6add2b11f762d56727af153c9880c08c'
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
