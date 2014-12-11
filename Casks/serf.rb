cask :v1 => 'serf' do
  version '0.6.3'
  sha256 'c406463486282ae9c6dc974a5d8688b8908a1fb6af46a2c1aca3785c16ac590b'

  url "https://dl.bintray.com/mitchellh/serf/#{version}_darwin_amd64.zip"
  homepage 'http://www.serfdom.io/'
  license :unknown    # todo: improve this machine-generated value

  binary 'serf'
end
