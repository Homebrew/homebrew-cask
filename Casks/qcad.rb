cask 'qcad' do
  version '3.21.2'

  if MacOS.version <= :mavericks
    sha256 '9155a11b10991dbeb5bac5a15b810354d0462f13bee8317e4327765d83582466'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.9-10.13.dmg"
  else
    sha256 '2c267dba49b68db33717a3773804182896d7633ded07ed2c8fe32947c3540061'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.10-10.13.dmg"
  end

  name 'QCAD'
  homepage 'https://www.qcad.org/'

  depends_on macos: '>= :mavericks'

  app 'QCAD.app'
end
