cask :v1 => 'rubitrack' do
  version '3.4.5'
  sha256 '1069a99e1c5faa5565fa89fa6f886298ab6e695f2942a3fc91895c5792d20be6'

  url "http://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast 'http://www.rubitrack.com/autoupdate/sparkle3.xml',
          :sha256 => 'c7aca0d98b52caa1e7d54cf7b44cdf06317fab2cf982f1e29f4034fe419175e7'
  homepage 'http://www.rubitrack.com/'
  license :unknown

  app "rubiTrack #{version.to_i}.app"
end
