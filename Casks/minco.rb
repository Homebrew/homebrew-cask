cask 'minco' do
  version '2.0.26'
  sha256 '0d56099f0d0bdf82c1acbc26d3128a3e39a3f177868d2bd8d8d37dd035176bfc'

  url "http://www.celmaro.com/files/minco#{version.major}/Minco.zip"
  appcast "http://www.celmaro.com/updates/minco#{version.major}/minco.xml",
          checkpoint: '71a03b6bcbcc68442a391fc8b17a87c8b8341739c35875d9cb3621258344d6b2'
  name 'Minco'
  homepage 'http://www.celmaro.com/minco/'
  license :commercial

  depends_on macos: '>= :yosemite'
  depends_on arch: :x86_64

  app 'Minco.app'
end
