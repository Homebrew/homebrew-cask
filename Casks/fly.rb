cask 'fly' do
  version '2.7.7'
  sha256 '8c0e90030753405ceafe93ff5e3c6d14c16a5672b6f34a24e39ce25a163c7463'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: 'd9b2cc55c187727c53977d2bd456bf8f95bddbdc50f1c590e55d4dc15c037fc9'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
