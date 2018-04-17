cask 'sloth' do
  version '2.3'
  sha256 '48bde4d97aa8420cf15afd8cecd19c266d69ad9f3e0e100642d1a1ab6c2786bd'

  url "https://sveinbjorn.org/files/software/sloth/sloth-#{version}.zip"
  appcast 'https://sveinbjorn.org/files/appcasts/SlothAppcast.xml',
          checkpoint: '8e2118307c2d1ae9184f819cb9f960f6f1c9492a20c72b3715cd868967d2d652'
  name 'Sloth'
  homepage 'https://sveinbjorn.org/sloth'

  app 'Sloth.app'

  zap trash: [
               '~/Library/Preferences/org.sveinbjorn.Sloth.plist',
               '~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState',
             ]
end
