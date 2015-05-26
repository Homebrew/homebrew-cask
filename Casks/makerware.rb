cask :v1 => 'makerware' do
  version '2.4.1.35'
  sha256 'bb01a6b2b2f46d8e1ec9522fe3f914646c39550f10d9fde8f0e830f670e933a8'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.makerbot.com/makerware/MakerWare%20Bundle%20of%20Awesome%20#{version}.dmg"
  name 'MakerBot MakerWare'
  homepage 'http://www.makerbot.com/makerware/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "MakerWare Bundle of Awesome #{version}.pkg"

  uninstall :pkgutil => 'com.makerbot.*'
end
