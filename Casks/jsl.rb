cask 'jsl' do
  version '0.3.0'
  sha256 'e7304d03fdb28165370e2859722c4821366e784dd86329bd246231cab610268e'

  url "http://www.javascriptlint.com/download/jsl-#{version}-mac.tar.gz"
  appcast 'http://www.javascriptlint.com/download.htm',
          checkpoint: 'd9ce005903d8a141e77b642da58e5b5ac9aa9b163849238d3a376467060ab825'
  name 'JavaScript Lint'
  homepage 'http://www.javascriptlint.com/'

  binary 'jsl'

  caveats <<-EOS.undent
    Test and configuration files for JavaScript Lint are available in

      #{staged_path}
  EOS
end
