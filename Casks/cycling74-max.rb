cask :v1 => 'cycling74-max' do
  version '6.1.7-140421'
  sha256 'deb3070e0161e074c7ee91861e06cfeec2c1dc85eb715e476797d026821c32c9'

  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.sub('-','_').gsub('.','')}.dmg"
  homepage 'http://cycling74.com'
  license :unknown    # todo: improve this machine-generated value

  pkg "Max #{version.sub(%r{^(\d+\.\d+).*},'\1')} Installer.pkg"

  uninstall :pkgutil => 'com.cycling74.Max*',
            :delete  => '/Applications/Max 6.1'
end
