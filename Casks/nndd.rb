cask 'nndd' do
  version '2.4.3,62201'
  sha256 '6a73dcad2e73d877ad1503ed1162cae1a1c84f21d1abaa6aaf9b31bb2fbca531'

  url "http://dl.osdn.jp/nndd/#{version.after_comma}/NNDD_v#{version.before_comma.dots_to_underscores}.dmg"
  appcast 'https://osdn.jp/projects/nndd/releases/rss',
          checkpoint: '688d962d47c3a84d474ddbb25c37fbe44240bba4f792bcfdb8cb6f1134fef678'
  name 'NNDD'
  homepage 'https://osdn.jp/projects/nndd/'

  depends_on cask: 'adobe-air'

  app 'NNDD.app'

  preflight do
    system_command staged_path.join('Install NNDD.app/Contents/MacOS/Install NNDD'),
                   args: ['-silent', '-eulaAccepted', '-location', staged_path]
  end
end
