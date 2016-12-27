cask 'fly' do
  version '2.5.1'
  sha256 '27ffb050b03ca815e9ffedd27cae08c69753389133ba8a256e7e1fec0b991d4c'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: '7f741af9ef4a64535bd83262068edec14a559bdcb78a3ba9217ee9a2c8f97805'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'

  postflight do
    set_permissions "#{staged_path}/fly_darwin_amd64", '0755'
  end
end
