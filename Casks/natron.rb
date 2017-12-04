cask 'natron' do
  version '2.3.3'
  sha256 '3efe76aa82872b2bdd80ec96746151d3997c9662967d008d22a010eff241e483'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/MrKepzie/Natron/releases.atom',
          checkpoint: '03c0144b1f5a17998020f8c05dbf13e9d8b9d9db322576cb9746c5bf183db2aa'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
