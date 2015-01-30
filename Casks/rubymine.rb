cask :v1 => 'rubymine' do
  version '7.0.3'
  sha256 '9e952a23a50ef3ccbb21112ce872e5e5c181b0387860754919a959cb04cfe9e9'

  url "http://download-cf.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine'
  homepage 'http://www.jetbrains.com/ruby/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'RubyMine.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  "~/Library/Application Support/RubyMine#{version.gsub('.','')}",
                  "~/Library/Preferences/RubyMine#{version.gsub('.','')}",
                 ]
end
