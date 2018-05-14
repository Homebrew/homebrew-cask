cask 'dbeaver-community' do
  version '5.0.5'
  sha256 'bebd2df71c1261a1128b3e752dfefaea044af3189f70312e528803896aa14ee2'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: '0f5b582ccc7923e3aef84579786d96ffe10b5e305e8a38f6df980c46e97889f9'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
