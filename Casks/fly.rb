cask 'fly' do
  version '2.7.0'
  sha256 '038134e934ec8cc20f4e4477c1366ac2da484d5ff38ae94192f27efc86ce863d'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: 'b0b6d2bdd556ce34baed5f9201a9d97315e3eed59a7388b861c568afca00320a'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
