class Squirrel < Cask
  url 'http://dl.bintray.com/lotem/rime/Squirrel-0.9.24.2.zip'
  homepage 'https://github.com/lotem/squirrel'
  version '0.9.24.2'
  sha256 'fbc25cf328cc7d7d73465e191cd050838c258bacbc96d7f47b6ef1713c809a16'
  install 'Squirrel.pkg'
  uninstall :files => '/Library/Input Methods/Squirrel.app'
end
