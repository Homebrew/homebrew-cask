cask 'dbeaver-enterprise' do
  version '4.0.5'
  sha256 'c58b03056e0a845f2d7fff7ca37dcdf8b4dc2ded74e1932bc2654f8676510bf0'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'http://dbeaver.jkiss.org/files/',
          checkpoint: 'ffef67bd5da18feb5a7143c0365679819ee456b260ec7ccec9b1b9199cef5bd9'
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
