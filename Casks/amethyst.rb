cask 'amethyst' do
  if MacOS.version <= :mavericks
    version '0.9.10'
    sha256 '82adf42ce6031ab59a3072e607788e73f594ad5f21c7118aabc6c5dafe3d0b47'
    url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  elsif MacOS.version <= :el_capitan
    version '0.10.1'
    sha256 '9fd1ac2cfb8159b2945a4482046ee6d365353df617f4edbabc4e8cadc448c1e7'
    url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  else
    version '0.15.0'
    sha256 '3a8c297f753161678a9db5d02c279e0dd266501f0887c9c9feb1b9cc4ef03ec7'
    # github.com/ianyh/Amethyst was verified as official when first introduced to the cask
    url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst.zip"
  end

  appcast 'https://github.com/ianyh/Amethyst/releases.atom'
  name 'Amethyst'
  homepage 'https://ianyh.com/amethyst/'

  auto_updates true

  app 'Amethyst.app'

  zap trash: [
               '~/Library/Caches/com.amethyst.Amethyst',
               '~/Library/Preferences/com.amethyst.Amethyst.plist',
               '~/Library/Cookies/com.amethyst.Amethyst.binarycookies',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amethyst.amethyst.sfl*',
             ]
end
