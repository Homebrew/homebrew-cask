cask 'rubitrack' do
  version '4.3.2'
  sha256 '1882f768befd9de165399efa52e460ea0fc883be442415da00e32aaccec9154c'

  url "http://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "http://www.rubitrack.com/autoupdate/sparkle#{version.to_i}.xml",
          checkpoint: 'd4e42f775f02e02c344b6119aa5995fa09fad6b78dda2c7d51ba307d21a38459'
  name 'rubiTrack'
  homepage 'http://www.rubitrack.com/'
  license :commercial

  depends_on macos: '>= :yosemite'
  depends_on arch: :x86_64

  app "rubiTrack #{version.to_i}.app"
end
