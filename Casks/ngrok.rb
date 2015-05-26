cask :v1 => 'ngrok' do
  version '2.0.17'
  sha256 '65494d1824fb77b7b3480ebfd65bd251c0ef6bf3eb8b91ee842e846be0676928'

  url "https://dl.ngrok.com/ngrok_#{version}_darwin_amd64.zip"
  name 'ngrok'
  homepage 'https://ngrok.com/'
  license :apache

  binary 'ngrok'

  # todo verify that this does not contain user-created content
  # zap :delete => '~/.ngrok'
end
