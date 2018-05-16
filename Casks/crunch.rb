cask 'crunch' do
  version '2.0.1'
  sha256 '23d37e03f63f6463013004c28f25bf0c4f693afab4727a4b613835f66eb845ad'

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  appcast 'https://github.com/chrissimpkins/Crunch/releases.atom',
          checkpoint: 'a434af117352df832883eb65ec9ef8dbce9145b1672c8f28b49af49ce59596e8'
  name 'Crunch'
  homepage 'https://github.com/chrissimpkins/Crunch'

  depends_on formula: [
                        'libpng',
                        'little-cms2',
                      ]

  app 'Crunch.app'
end
