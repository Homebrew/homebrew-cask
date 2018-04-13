cask 'qcad' do
  version '3.20.1'

  if MacOS.version <= :mavericks
    sha256 'e24fb8ef40bf1dac7c830bfe1ab2c41810961b72d6231dcec883dbc15b1f1d8c'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.9-10.13.dmg"
  else
    sha256 '4363ee2e0ba6e92c7a9ecba25f49fa9fba3572330966c6a3ebea3c056cf83c7f'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.10-10.13.dmg"
  end

  name 'QCAD'
  homepage 'https://www.qcad.org/'

  depends_on macos: '>= :mavericks'

  app 'QCAD.app'
end
