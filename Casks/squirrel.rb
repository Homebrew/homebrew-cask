class Squirrel < Cask
  version '0.9.25'
  sha256 'ec9028e097ec5130c79c6e8353c88d50729cd3f8bb15832d498fc679c4391021'

  url 'https://dl.bintray.com/lotem/rime/Squirrel-0.9.25.zip'
  homepage 'https://github.com/lotem/squirrel'

  pkg 'Squirrel.pkg'
  uninstall :files => '/Library/Input Methods/Squirrel.app'
end
