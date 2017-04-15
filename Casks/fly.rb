cask 'fly' do
  version '2.7.3'
  sha256 '7d2f27e11bcafc32f449cda8e384aa3d7acef4b784155f4ddd530da7e7e3060e'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: 'a4e2dbb0b914e3bfbce30650850c3e74a4f1492ebee6033b58d564e05edf72a5'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
