cask :v1 => 'serf' do
  version '0.6.3'
  sha256 'c406463486282ae9c6dc974a5d8688b8908a1fb6af46a2c1aca3785c16ac590b'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/serf/#{version}_darwin_amd64.zip"
  name 'Serf'
  homepage 'http://www.serfdom.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  binary 'serf'
end
