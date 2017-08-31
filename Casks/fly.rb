cask 'fly' do
  version '3.4.1'
  sha256 '8ae189e40ee77e74946e4a7d930ed924189a76575334c7f3c759ca3755066871'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: 'd0863da02be2c7b36bdeb29f312ca108a5069a9773de01dbb29422ee4cedef9a'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
