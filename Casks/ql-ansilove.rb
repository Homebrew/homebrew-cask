cask 'ql-ansilove' do
  version '1.0-beta'
  sha256 '7f01e90c7856dac2d93c87876f0739baa61702a58d50aedb24142e6091ac4c67'

  url "https://github.com/ansilove/QLAnsilove/releases/download/v#{version}/QLAnsilove-#{version}.zip"
  appcast 'https://github.com/ansilove/QLAnsilove/releases.atom',
          checkpoint: 'f8536048ecb74dcc7148263fbc8b89cce26cb68b636293c3539472cf3c4617e6'
  name 'QLAnsilove'
  homepage 'https://github.com/ansilove/QLAnsilove'

  qlplugin 'QLAnsilove.qlgenerator'
end
