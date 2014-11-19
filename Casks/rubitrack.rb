cask :v1 => 'rubitrack' do
  version '3.4.7'
  sha256 '22bf1e7392d5e4cb6fc4e3c9d1ada3ea64976348ae3271ab13d55e6cdf55f5ce'

  url "http://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast 'http://www.rubitrack.com/autoupdate/sparkle3.xml',
          :sha256 => 'c7aca0d98b52caa1e7d54cf7b44cdf06317fab2cf982f1e29f4034fe419175e7'
  homepage 'http://www.rubitrack.com/'
  license :unknown

  app "rubiTrack #{version.to_i}.app"
end
