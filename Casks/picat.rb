cask 'picat' do
  version '1.9#4'
  sha256 '4d8efcac07fb99aa6a635239509948b730e6589e6348929cb156e871c4f9f748'

  url 'http://picat-lang.org/download/picat19_macx.tar.gz'
  name 'Picat'
  homepage 'http://www.picat-lang.org/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  binary 'picat/picat'
end
