cask 'nosleep' do
  version '1.5.0'
  sha256 '5e280d6268a26f292dd6ad308e5cafc9a2396861a43e53a01744ac78db987e2d'

  url "https://github.com/integralpro/nosleep/releases/download/#{version}/NoSleep-#{version}.dmg"
  appcast 'https://github.com/integralpro/nosleep/releases.atom'
  name 'NoSleep'
  homepage 'https://integralpro.github.io/nosleep/'
  
  app 'NoSleep.app'
end
