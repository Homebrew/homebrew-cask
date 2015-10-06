cask :v1 => 'platypus' do
  version '4.9'
  sha256 'f28ed1f0c3f4d4109c55d580dbf69950ad865fa7e91f32bc64d592546f382c6a'

  url "http://sveinbjorn.org/files/software/platypus/platypus#{version}.zip"
  appcast 'http://www.sveinbjorn.org/files/appcasts/PlatypusAppcast.xml',
          :sha256 => 'a059feb6ccc10781a1e9c5b1481760bf9556572c181feefd1183a4188adb987b'
  name 'Platypus'
  homepage 'http://sveinbjorn.org/platypus'
  license :bsd

  app "Platypus-#{version}/Platypus.app"
end
