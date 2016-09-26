cask 'dbeaver-enterprise' do
  version '3.7.5'
  sha256 '2378701036d23b2b0962a89ab4f29bc58b5692693602d20050f060c2a2a05c25'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
