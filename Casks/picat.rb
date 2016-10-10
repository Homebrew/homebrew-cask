cask 'picat' do
  version '1.9'
  sha256 '4d8efcac07fb99aa6a635239509948b730e6589e6348929cb156e871c4f9f748'

  url "http://picat-lang.org/download/picat#{version.no_dots}_macx.tar.gz"
  appcast 'http://picat-lang.org/updates.txt',
          checkpoint: '040b8a4f7befb1c284c3e6e00c97e6659ca8ac9ebc87f37619fd5565972c12f4'
  name 'Picat'
  homepage 'http://www.picat-lang.org/'

  binary 'Picat/picat'
end
