cask 'gitify' do
  version '1.0.0'
  sha256 'c5dd7d775564fe2beae3283fd9925b5c32882cd97735014c127f40f06d588ea6'

  url "https://github.com/ekonstantinidis/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/ekonstantinidis/gitify/releases.atom',
          checkpoint: '3f8d4b86e6ff77bea861765a37b52b18ce82e632b2193c06331b88b403fc1317'
  name 'Gitify'
  homepage 'https://github.com/ekonstantinidis/gitify'
  license :oss

  app 'Gitify.app'
end
