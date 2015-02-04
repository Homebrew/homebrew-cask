cask :v1 => 'rawtherapee' do
  version '4.2.21'

  if MacOS.release <= :mavericks
    sha256 '4daddff5fbb6cc8c3cca80dd1c25bf2adb42ff8068e6d79db040690113a22539'
    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.6_64_#{version}.zip"
  else
    sha256 'b7c2a0614c849cdfb206b06eb967d6ceefc674a8e6bade1c1db7bac2f096bd13'
    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.10_64_#{version}.zip"
  end

  name 'RawTherapee'
  homepage 'http://rawtherapee.com'
  license :gpl

  if MacOS.release <= :mavericks
    container :nested => "RawTherapee_OSX_10.6_64_#{version}.dmg"
  else
    container :nested => "RawTherapee_OSX_10.10_64_#{version}.dmg"
  end
  app 'RawTherapee.app'

  depends_on :macos => '>= :snow_leopard',
             :arch => :x86_64
end
