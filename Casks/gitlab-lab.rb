cask 'gitlab-lab' do
  version '0.10.1'
  sha256 '7a215ca4b039403fd127edc02f6b9fdf58a044a3c925bd4d0e1666d8dfef977c'

  # Github releases url has been verified at the time of creating cask
  url "https://github.com/zaquestion/lab/releases/download/v#{version}/lab_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/zaquestion/lab/releases.atom',
          checkpoint: '7096ee3f7ebd4495794a54479d236410471d760f6265a86322699bc40eec8f7e'
  name 'lab'
  homepage 'https://zaquestion.github.io/lab'

  binary 'lab'
end
