cask 'fly' do
  version '3.1.1'
  sha256 'd6f4b49d4413297b3820db87e57dde8de7eb5750096cbaa5d3c3096e2cadbfec'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: 'd67cb757161067df1ff201edeb95a922899e4b2cfb77b1def2cfeeab61786bd2'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
