cask 'soundstand' do
  version '0.3.0'
  sha256 '60a04331f632162a33bd54251bb4b25ddd92cf1a2786bd79e54667a534f1aaf9'

  url "https://github.com/ngtk/soundstand/releases/download/v#{version}/SoundStand.app.zip"
  appcast 'https://github.com/ngtk/soundstand/releases.atom',
          checkpoint: 'd841d920c2fe0ef22425beb9f9412072bf235c1b7affa677445d92dab5e323bf'
  name 'SoundStand'
  homepage 'https://github.com/ngtk/soundstand'

  app 'SoundStand.app'
end
