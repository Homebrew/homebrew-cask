cask :v1 => 'gitify' do
  version '0.0.16'
  sha256 'a6fc68ce0c83866a6180b37ec2ef42cc89df86b777218fde694a02ed5a9cda9e'

  url "https://github.com/ekonstantinidis/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/ekonstantinidis/gitify/releases.atom'
  name 'Gitify'
  homepage 'https://github.com/ekonstantinidis/gitify'
  license :oss

  app 'Gitify.app'
end
