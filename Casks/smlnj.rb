cask :v1 => 'smlnj' do
  version '110.77'
  sha256 '77265ce1bdbca3e9c9b3053195503bf2bffafbba196596679fb64d9ceb4e25ee'

  url "http://smlnj.cs.uchicago.edu/dist/working/#{version}/smlnj-x86-#{version}.pkg"
  # todo
  # name 'Standard ML New Jersey'
  homepage 'http://www.smlnj.org/'
  license :oss

  pkg "smlnj-x86-#{version}.pkg"

  uninstall :pkgutil => 'org.smlnj.x86.pkg'
end
