cask 'lingon-x' do
  if MacOS.version <= :high_sierra
    version '6.6.4'
    sha256 'fc788402fa16df39a3d48cdc501dae31368ec6fd69ffe0026ba99932b28cae19'
  else
    version '7.0.2'
    sha256 'eaa2e1a45626d1a3098926152cf675e91348c174585406cf7d230487e09d9100'
  end

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}.plist"
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :high_sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
