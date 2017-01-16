cask 'fly' do
  version '2.6.0'
  sha256 '5da021282209ad09ac99844b506b8a6ea082837ef8917e0bc34686e892503aba'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: '22601548e307a4713aa32765971955756f1052c5615187927a699b918e8da0fd'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'

  postflight do
    set_permissions "#{staged_path}/fly_darwin_amd64", '0755'
  end
end
