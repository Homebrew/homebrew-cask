cask 'musescore' do
  version '2.0.3.1'
  sha256 'a166a21bf6259331a42b3a5ed73cfb69f653095a27a676fbf94a747d98153b29'

  # ftp.osuosl.org/pub/musescore was verified as official when first introduced to the cask
  url "http://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version.major_minor_patch}/MuseScore-#{version}.dmg"
  name 'MuseScore'
  homepage 'https://musescore.org/'

  depends_on macos: '>= :lion'

  app "MuseScore #{version.major}.app"
end
