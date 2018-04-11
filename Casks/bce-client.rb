cask 'bce-client' do
  version '0.3.10'
  sha256 '5491b858c8d57bfb88db4ff20599b6551e0b3453b5f86a624bac227585abb920'

  # bce-bos-client.cdn.bcebos.com was verified as official when first introduced to the cask
  url "https://bce-bos-client.cdn.bcebos.com/releases/v#{version}/bce-client-#{version}-mac.zip"
  name 'Baidu Cloud'
  name '百度云'
  homepage 'https://cloud.baidu.com/doc/BOS/BOSCLI.html#BOS.E6.A1.8C.E9.9D.A2'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app '百度云.app'

  zap trash: [
               '~/Library/Application Support/百度云',
               '~/Library/Caches/com.baidu.bce',
               '~/Library/Logs/百度云/',
               '~/.bce',
             ]
end
