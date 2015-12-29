cask 'sparkle' do
  version '1.13.0'
  sha256 '1bbfe7cbe7b7afb7beb46746ffd521a5b2ede4d8720191213dfc61c428472025'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom',
          :sha256 => 'd75e1340184202c7a6389473f9a95f35e691d8ae82cc22eb9352d0ac67ce8682'
  name 'Sparkle'
  homepage 'http://sparkle-project.org/'
  license :mit

  app 'Sparkle Test App.app'
end
