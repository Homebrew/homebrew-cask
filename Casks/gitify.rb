cask 'gitify' do
  version '0.0.19'
  sha256 '21c3e11efaf0089fc3d9805d4158d5f6c031639983106e730f91b618913ff7af'

  url "https://github.com/ekonstantinidis/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/ekonstantinidis/gitify/releases.atom',
          checkpoint: '2518cea1da222ddeb581507ea7ba17cc58ba10dd5b56122033114dfd9a6fbef7'
  name 'Gitify'
  homepage 'https://github.com/ekonstantinidis/gitify'
  license :oss

  app 'Gitify.app'
end
