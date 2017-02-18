cask 'frostwire' do
  version '6.4.4'
  sha256 '3500f01ac5a725f2cd469b8580bd7f6977a530dbd0aae4b4160465167159bdef'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: 'b48434b51bb0d38300c5b679fbf29aad6f5bb0452cfc037da04dc56015356c7b'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
