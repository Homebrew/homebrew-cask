class Squirrel < Cask
  url 'http://dl.bintray.com/lotem/rime/Squirrel-0.9.24.2.zip'
  homepage 'https://github.com/lotem/squirrel'
  version '0.9.24.2'
  sha1 'ddd7c36698dccd98fefcc6fcf2c6e411d1dd5715'
  install 'Squirrel.pkg'
  uninstall :files => '/Library/Input Methods/Squirrel.app'
end
