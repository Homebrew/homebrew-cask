cask 'jsl' do
  version '0.3.0'
  sha256 'e7304d03fdb28165370e2859722c4821366e784dd86329bd246231cab610268e'

  url "http://www.javascriptlint.com/download/jsl-#{version}-mac.tar.gz"
  name 'JavaScript Lint'
  homepage 'http://www.javascriptlint.com/'

  binary "jsl-#{version}-mac/jsl"

  caveats <<-EOS.undent
    Test and configuration files for JavaScript Lint are available in

      #{staged_path}
  EOS
end
