cask :v1 => 'appcode' do
  version '3.0.6'
  sha256 'cd706fc97572f2d0784aca3504e286a1cd5a14e9c39abf1e3beaaa10610ea089'

  url "http://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  homepage 'http://www.jetbrains.com/objc/'
  license :unknown

  app 'AppCode.app'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', "#{staged_path}/AppCode.app/Contents/Info.plist"
  end
end
