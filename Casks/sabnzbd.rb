cask 'sabnzbd' do
  version '1.0.0'
  sha256 'ce6b278ededf8634f9bdce7d0a617ee2944ac6e3055ddc35802ef001eb4613a3'

  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '16c6cbf03c32e221a45eb757b68f8cc429e233bf74d67dfe42598c1a7894dd49'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'
  license :gpl

  depends_on macos: '>= :mavericks'

  if MacOS.release == :mavericks
    app 'Mavericks/SABnzbd.app'
  elsif MacOS.release <= :yosemite
    app 'Yosemite/SABnzbd.app'
  else
    app 'SABnzbd.app'
  end

  zap delete: '~/Library/Application Support/SABnzbd'
end
