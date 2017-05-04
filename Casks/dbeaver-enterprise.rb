cask 'dbeaver-enterprise' do
  version '4.0.5'
  sha256 'c58b03056e0a845f2d7fff7ca37dcdf8b4dc2ded74e1932bc2654f8676510bf0'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'http://dbeaver.jkiss.org/files/',
          checkpoint: 'f600c36bda2d4ce9c33e3a8aa006a61a74fb8f825f373a3ea82e41fe2ca6d49e'
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
