cask 'fly' do
  version '3.9.1'
  sha256 '527c60a5e33a23f5ca43c5cf62061e49be192fcda5fd6daf293e9c4b5150a9fb'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: 'c20eeb5d47cb9dc26ecbe1fd0ff00835dbdcf75c3e9eba84451692582dcfcd1a'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
