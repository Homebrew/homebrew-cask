cask 'dbeaver-enterprise' do
  version '3.6.6'
  sha256 '230439ae373b0ac5876dcde9bb1e27304f2f0ed022ef35d6e171d1d33786b471'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
