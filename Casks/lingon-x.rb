cask 'lingon-x' do
  if MacOS.version <= :high_sierra
    version '6.6.4'
    sha256 'fc788402fa16df39a3d48cdc501dae31368ec6fd69ffe0026ba99932b28cae19'
    url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
    appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml"
  else
    version '7.0.0'
    sha256 '4c398afdbb595ae20af141063bffceefa6c3fabf77f86078a960df9631e83a96'
    url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
    appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}.plist"
  end

  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :high_sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
