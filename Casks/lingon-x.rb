cask 'lingon-x' do
  if MacOS.version <= :high_sierra
    version '6.6.4'
    sha256 'fc788402fa16df39a3d48cdc501dae31368ec6fd69ffe0026ba99932b28cae19'
  else
    version '7.3.1'
    sha256 '13f39ef6859ada42398389376906e12b07b48a4938907f26f7658df0ccfe99a2'
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
