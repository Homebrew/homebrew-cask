cask 'clock' do
  version '1.1'
  sha256 'f2def6485626b4d10a535cb86eb7c877da8d59a2103f8da7b211970c88b96913'

  # github.com/downloads/zachwaugh/Clock.app was verified as official when first introduced to the cask
  url "https://github.com/downloads/zachwaugh/Clock.app/Clock-#{version}.zip"
  appcast 'https://zachwaugh.me/clock/',
          checkpoint: '4f84c958bf1ecdfbae7f0ac71deb8b1e3fa14958da1786875e9ba455fcc20762'
  name 'Clock'
  homepage 'https://zachwaugh.me/clock/'

  depends_on macos: '>= :lion'

  app 'Clock.app'
end
