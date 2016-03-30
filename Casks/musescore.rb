cask 'musescore' do
  version '2.0.2'
  sha256 '7c32ca882d4dfed6866a13ade88662a8ce882a98ead6f3cb6f80307a91ea8bd7'

  # osuosl.org is the official download host per the vendor homepage.
  url "http://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version}/MuseScore-#{version}.dmg"
  name 'MuseScore'
  homepage 'https://musescore.org/'
  license :gpl

  depends_on macos: '>= :lion'

  app "MuseScore #{version.to_i}.app"
end
