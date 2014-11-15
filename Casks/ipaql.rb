cask :v1 => 'ipaql' do
  version '1.3.0'
  sha256 'bcff849e15b351c224fbd65888c1e5901f335ed034758eb673de1ce454000b18'

  url "http://ipaql.com/site/assets/files/1006/ipaql_#{version.gsub('.','-')}.zip"
  homepage 'http://ipaql.com/'
  license :unknown

  qlplugin 'ipaql.qlgenerator'
end
