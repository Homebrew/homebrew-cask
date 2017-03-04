cask 'honer' do
  version '1.1'
  sha256 'ca6b657bec7fd20e2cae8c7145852439148211b9d4aac9ab12c354c69426c043'

  url "https://github.com/puffnfresh/Honer.app/releases/download/#{version}/Honer.app.zip"
  appcast 'https://github.com/puffnfresh/Honer.app/releases.atom',
          checkpoint: '7a17fbf398d822447d22a13f3aae9a7420ade9e7e47f6d6a20aaa38b4b73c42c'
  name 'Honer'
  homepage 'https://github.com/puffnfresh/Honer.app'

  app 'Honer.app'
end
