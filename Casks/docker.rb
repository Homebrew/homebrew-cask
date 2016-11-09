cask 'docker' do
  version '1.12.3.13776'
  sha256 '5e9676cedcd87dd0909bf7007bfba571354f61d728deb52a426a3be105ba3774'

  url "https://download.docker.com/mac/stable/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/stable/appcast.xml',
          checkpoint: '1104809b02843215c4b7acf1108fb958d1491811912c8ef20ab4bc718e82cce2'
  name 'Docker for Mac'
  homepage 'https://www.docker.com/products/docker'

  auto_updates true

  app 'Docker.app'
end
