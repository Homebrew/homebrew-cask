cask 'fly' do
  version '3.5.0'
  sha256 '2580407ca4bbd46ca4d42dd95372fcab48c9380a54bb3681cfc8716022202652'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: '757019e10310a17a85319dddfaf37887db6e9d48ac57a4f31be6445e29efb25d'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
