cask 'spoofax' do
  version '2.5.9'
  sha256 '62dc7c3a9052acaa3bdb8524279859b9c9a75d7b68a9202cf242aba6b2ad5860'

  url "https://artifacts.metaborg.org/service/local/repositories/releases/content/org/metaborg/org.metaborg.spoofax.eclipse.dist/#{version}/org.metaborg.spoofax.eclipse.dist-#{version}-macosx-x64-jre.tar.gz"
  name 'Spoofax'
  homepage 'https://www.metaborg.org/'
  appcast 'https://github.com/metaborg/spoofax/releases.atom'

  app 'spoofax.app'
end
