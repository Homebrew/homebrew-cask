cask 'jsl' do
  version '0.3.0'
  sha256 'e7304d03fdb28165370e2859722c4821366e784dd86329bd246231cab610268e'

  url "http://www.javascriptlint.com/download/jsl-#{version}-mac.tar.gz"
  appcast 'http://www.javascriptlint.com/download.htm'
  name 'JavaScript Lint'
  homepage 'http://www.javascriptlint.com/'

  binary "jsl-#{version}-mac/jsl"

  caveats <<~EOS
    Test and configuration files for JavaScript Lint are available in

      #{staged_path}
  EOS
end
