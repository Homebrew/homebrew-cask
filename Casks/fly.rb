cask 'fly' do
  version '3.3.0'
  sha256 'e41693bec8df5f0a5fb65b99878a74fceb226d51b047625e234b0820488d9f44'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: 'f3d29b5a89a5ebd78a238bb09e82dd63675d0da4a0afd9941dddc5cfd3aaa1e5'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
