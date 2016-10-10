cask 'qlswift' do
  version '0.0.1'
  sha256 '9541767fb3f381791cd5b98a84c681da6607179c8da32677f73972c9a0836728'

  url "https://github.com/lexrus/QLSwift/releases/download/#{version}/QLSwift.qlgenerator.zip"
  appcast 'https://github.com/lexrus/QLSwift/releases.atom',
          checkpoint: '5dc3ff40c67e2c7625aed0ad377a35dea553b437939372d784ef5b94080e8104'
  name 'QLSwift'
  homepage 'https://github.com/lexrus/QLSwift'

  qlplugin 'QLSwift.qlgenerator'
end
