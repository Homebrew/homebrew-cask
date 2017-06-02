cask 'soundstand' do
  version '0.3.0'
  sha256 '60a04331f632162a33bd54251bb4b25ddd92cf1a2786bd79e54667a534f1aaf9'

  url "https://github.com/ngtk/soundstand/releases/download/v#{version}/SoundStand.app.zip"
  appcast 'https://github.com/ngtk/soundstand/releases.atom',
          checkpoint: '3558ed1ad642d52fdd7009431d73ba2212534306df1d3b80ec9aa93e075ae73d'
  name 'SoundStand'
  homepage 'https://github.com/ngtk/soundstand'

  app 'SoundStand.app'
end
