cask 'fly' do
  version '3.0.1'
  sha256 '41677d20bc6fd9e6720c67536aa32a3acbf9f729361349340e6d027464fbf57f'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: '5bebac739c1c6bd929715b76dfbee23f7727fa9a57f17e5a4d3d183ff501c8b7'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
