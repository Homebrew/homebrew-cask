cask 'rubitrack' do
  version '4.3.3'
  sha256 '3705e87b70fa61f954c3f9e7edb4d8643771e583c7133caad5972fa432a5cae1'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: 'e360c5fcdbc5d7add4941360999e8b914559d4ab9e4abec4a2ac058037b6a684'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'
  depends_on arch: :x86_64

  app "rubiTrack #{version.major}.app"
end
