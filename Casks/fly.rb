cask 'fly' do
  version '3.10.0'
  sha256 'fb87d8b5eec0117d56ed8002b23946fb458373eae5a96c32efa3de31e1ac1847'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: 'ef7e7c2d3af404c61f838d6003a1876ab0de30b68c846e5bc096c5ab484748b5'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
