cask 'nzbvortex' do
  version '3.3.1'
  sha256 '0672c76892b91a78dd77e06f2f624a9fbee5d4528316165cc377cfacab06fa72'

  url "http://www.nzbvortex.com/downloads/NZBVortex-#{version}.zip"
  appcast "https://www.nzbvortex.com/update/appcast_v#{version.major}.xml",
          checkpoint: '8c8ce02577fabbf99446c6076cea122a978a12425044a9695773e35cb02a4c9a'
  name 'NZBVortex'
  homepage 'http://www.nzbvortex.com/'
  license :commercial

  app "NZBVortex #{version.major}.app"
end
