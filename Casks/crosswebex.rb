cask 'crosswebex' do
  version '1.0.1.752'
  sha256 'b6a2b2fd89ee2fad5aae3afe45041499d65ed2278d02ac919aff4bc156af1760'

  url "https://open.shinhan.com/initech/extension/down/CrossWebEX.pkg?ver=#{version}"
  name 'Cross WEB EX'
  homepage 'https://open.shinhan.com'
  license :gratis

  pkg 'CrossWebEX.pkg'

  uninstall pkgutil: 'kr.co.iniline.pkg.CrossWebEX'
end
