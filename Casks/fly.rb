cask 'fly' do
  version '2.7.4'
  sha256 '624e5af6ff44c01e838d8a517a71f61c5aff350038817396c9c387bd17fa65f7'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: 'f3e9d5f7ef7ff923f0635fba79facb8ca690c6637fedcbabe8b0cac60c842e7b'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
