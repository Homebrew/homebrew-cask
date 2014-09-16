class Phpstorm < Cask
  version '8.0'
  sha256 '2933769bf855be83decf6cc8cda79c8a9b6998fb4647761d18c81aadca1da06f'

  url "http://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  homepage 'http://www.jetbrains.com/phpstorm/'

  app 'PhpStorm.app'

  postflight do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/PhpStorm.app/Contents/Info.plist"
  end
end
