cask :v1 => 'pycharm-ce' do
  version '3.4.1'
  sha256 '18b4d2d61badb81feaf22a51a7c76b85618e5a7a01f4f4c5e46079d134c64002'

  url "http://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  homepage 'http://www.jetbrains.com/pycharm'
  license :unknown

  app 'PyCharm CE.app'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', "#{staged_path}/PyCharm CE.app/Contents/Info.plist"
  end
end
