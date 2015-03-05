cask :v1 => 'rubymine' do
  version '7.0.4'
  sha256 'a2340eec7652fefb1d6fc7eacd7338d04aac1106eff40d18ad4fe6d379f3c53a'

  url "http://download-cf.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine'
  homepage 'http://www.jetbrains.com/ruby/'
  license :commercial

  app 'RubyMine.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  "~/Library/Application Support/RubyMine#{version.gsub('.','')}",
                  "~/Library/Preferences/RubyMine#{version.gsub('.','')}",
                 ]
end
