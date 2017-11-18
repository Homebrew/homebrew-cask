cask 'dbeaver-enterprise' do
  version '4.2.0'
  sha256 'be79572cdabee2ba108a8a50ff42dea7d9bb6b9061ddaeaf22e2c9ac4b4c886c'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml',
          checkpoint: 'c499fedde33d8066aac425bda71bb8abaa94696411fbc9dd6282dbc734581869'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
