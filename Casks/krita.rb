cask 'krita' do
  version '4.1.3'
  sha256 'bdb3817cce26f6080c1532b1943be6aca73b2e583741520bac3df4b8aec796ad'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  depends_on macos: '>= :el_capitan'

  app 'krita.app'

  zap trash: [
               '~/Library/Application Support/krita',
               '~/Library/Preferences/kritadisplayrc',
               '~/Library/Preferences/kritarc',
               '~/Library/Saved Application State/org.krita.savedState',
             ]
end
