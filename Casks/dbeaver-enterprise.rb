cask 'dbeaver-enterprise' do
  version '3.7.8'
  sha256 '0a163355ca526aecb26ee11404a8a7494feb4cd16b17789d7e41e55be8892548'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'
end
