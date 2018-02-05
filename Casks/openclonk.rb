cask 'openclonk' do
  version '8.0'
  sha256 'cba50deb936a70f0ba003313659b91c365f231a3f9d86d10e6918c3f32c7bced'

  url "http://openclonk.org/builds/release/#{version}/openclonk-#{version}-x64.app.zip"
  appcast 'http://www.openclonk.org/download/',
          checkpoint: '2aaf233efeca1ad718019436142ddcd18473c360fa001a616de96eac69801fd6'
  name 'OpenClonk'
  homepage 'http://openclonk.org/'

  app 'openclonk-c54d917-darwin-amd64-clang.app'
end
