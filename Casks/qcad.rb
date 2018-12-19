cask 'qcad' do
  version '3.21.3'

  if MacOS.version <= :mavericks
    sha256 '9155a11b10991dbeb5bac5a15b810354d0462f13bee8317e4327765d83582466'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.9-10.13.dmg"
  else
    sha256 'dbc0dff4d7106c686a7f3b9d1ed80de2e82bb64e7901b8fd7d42018d2e6a39cc'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.10-10.13.dmg"
  end

  name 'QCAD'
  homepage 'https://www.qcad.org/'

  depends_on macos: '>= :mavericks'

  app 'QCAD.app'
end
