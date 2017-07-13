cask 'fly' do
  version '3.3.2'
  sha256 '97f3ec170dce41739b9cf8002b25402457410ccbfd057e378f8776a7f1bf290d'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: '288168c1a6cb51917aa4bf9f93cab31f14e99629891c8f3b18f09bd1f632fe94'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
