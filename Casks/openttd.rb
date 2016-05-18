cask 'openttd' do
  version '1.6.0'
  sha256 '6903eba14353af69f4dafb254d73d0c0b0eac878ae115759a196f2f53714ec31'

  url "http://binaries.openttd.org/releases/#{version}/openttd-#{version}-macosx-universal.zip"
  name 'OpenTTD'
  homepage 'http://openttd.org'
  license :gpl

  app 'OpenTTD.app'
end
