class Squirrel < Cask
  url 'http://dl.bintray.com/lotem/rime/Squirrel-0.9.21.1.zip'
  homepage 'https://github.com/lotem/squirrel'
  version '0.9.21.1'
  sha1 '93decf9be3389afa36df93b0c91bfa26f1e9998b'
  install 'Squirrel.pkg'
  uninstall :files => '/Library/Input Methods/Squirrel.app'
end
