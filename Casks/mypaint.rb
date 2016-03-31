cask 'mypaint' do
  version '1.0.0v3'
  sha256 'a7e1066b4f7ff6d0f5faa3154e5cf97637607d2143ea9121ac36037c03e41848'

  # dropbox.com is the official download host per the vendor homepage.
  url "https://dl.dropbox.com/u/942685/MyPaint-#{version}.pkg"
  appcast 'https://github.com/mypaint/mypaint/releases.atom',
          checkpoint: 'f344a1ee81f291f406c2b394369435653b52fa20417760edf6b549f3b71a3602'
  name 'MyPaint'
  homepage 'http://mypaint.intilinux.com'
  license :gpl

  pkg "MyPaint-#{version}.pkg"

  uninstall pkgutil: 'com.mypaint.*'
end
