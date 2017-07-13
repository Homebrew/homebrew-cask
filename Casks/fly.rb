cask 'fly' do
  version '3.3.1'
  sha256 'c33c381bb675fc2e777ecbe1f7dff08f30e3ffec639727ef57916983b3f9f702'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: '36f927788e8f81fdbf54d8d6efde0e41c4e69bdfdf8daba0e680acffe5c2fed6'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
