cask 'node-profiler' do
  version '0.12.6'
  sha256 '25047304ab6b894b6aa4f910b606b6e6c31e680e7194016d6a0cee39af9631be'

  url "https://profiler.oss-cn-hangzhou.aliyuncs.com/node-profiler-v#{version}.pkg"
  name 'node-profiler'
  homepage 'http://alinode.aliyun.com/'
  license :mit

  pkg "node-profiler-v#{version}.pkg"

  uninstall :pkgutil => 'com.aliyun.nodeprofiler.pkg'
end
