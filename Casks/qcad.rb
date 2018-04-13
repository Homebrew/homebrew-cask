cask 'qcad' do
  version '3.20.1'
  sha256 'e24fb8ef40bf1dac7c830bfe1ab2c41810961b72d6231dcec883dbc15b1f1d8c'

  url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.9-10.13.dmg"
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
