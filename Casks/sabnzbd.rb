cask 'sabnzbd' do
  version '1.1.1'
  sha256 '85fee2a2f3f6ecbb7bd3e741710ed47c829e5a35443eaae05ae69a994d80eba8'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '563da92a4ed4ada3ea49a922a7f952891a06ebde7577dab9ad03ad5544a9f9e2'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :mavericks'

  if MacOS.version == :mavericks
    app 'Mavericks/SABnzbd.app'
  elsif MacOS.version <= :yosemite
    app 'Yosemite/SABnzbd.app'
  else
    app 'SABnzbd.app'
  end

  zap delete: '~/Library/Application Support/SABnzbd'
end
