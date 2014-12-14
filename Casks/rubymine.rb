cask :v1 => 'rubymine' do
  version '7.0.1'
  sha256 'f67ad4b58dcbcac5e4297f9bc086d8ce40d91096bcdc05fb497e757a2fad9e4a'

  url "http://download-cf.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  homepage 'http://www.jetbrains.com/ruby/'
  license :unknown    # todo: improve this machine-generated value

  app 'RubyMine.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  "~/Library/Application Support/RubyMine#{version.gsub('.','')}",
                  "~/Library/Preferences/RubyMine#{version.gsub('.','')}",
                 ]
end
