cask 'inboxer' do
  version '1.0.1'
  sha256 '9cd1ca70a0c4748a70510f7669682d109deec2801ff9bf131c86d2cdcd07c70e'

  # github.com/denysdovhan/inboxer was verified as official when first introduced to the cask
  url "https://github.com/denysdovhan/inboxer/releases/download/v#{version}/inboxer-#{version}-mac.zip"
  appcast 'https://github.com/denysdovhan/inboxer/releases.atom',
          checkpoint: 'ddc3401c7075c5402b246601ea40cc96f83a5655068bb2b55bba59277d0a8f85'
  name 'inboxer'
  homepage 'https://denysdovhan.com/inboxer'

  app 'inboxer.app'
end
