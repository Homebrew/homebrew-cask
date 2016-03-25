cask 'nndd' do
  version '2.4.3'
  sha256 '6a73dcad2e73d877ad1503ed1162cae1a1c84f21d1abaa6aaf9b31bb2fbca531'

  url "http://dl.osdn.jp/nndd/62201/NNDD_v#{version.gsub('.', '_')}.dmg"
  name 'NNDD'
  homepage 'https://osdn.jp/projects/nndd/'
  license :x11

  depends_on cask: 'adobe-air'

  app 'NNDD.app'

  preflight do
    system_command staged_path.join('Install NNDD.app/Contents/MacOS/Install NNDD'),
                   args: ['-silent', '-eulaAccepted', '-location', staged_path]
  end
end
