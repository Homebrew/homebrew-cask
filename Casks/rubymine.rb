cask :v1 => 'rubymine' do
  version '7.0.2'
  sha256 '70f891b21cd99573c83d5242d46bc70fb241987d2b06d5a19a19f2ac62499bab'

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
