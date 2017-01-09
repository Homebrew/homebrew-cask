cask 'dbeaver-enterprise' do
  version '3.8.3'
  sha256 '447d50d3615f5045f2c24c5cac64bbed55e3cfd792258e00abb427fcb90a8bb0'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'http://dbeaver.jkiss.org/files/',
          checkpoint: '5b090f47cf3307e1a20ab8afdfdbb5e8374a9171445620ad85cdd0614cade71c'
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'
end
