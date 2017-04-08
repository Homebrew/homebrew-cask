cask 'google-notifier' do
  version '1.10.7'
  sha256 '055775cb02773e4ec0e133111c7720134d32bb8d3a1f747231dc0c7d4078f5f7'

  url "https://dl.google.com/mac/download/GoogleNotifier_#{version}.dmg"
  name 'Google Notifier'
  homepage 'https://chrome.google.com/webstore/detail/notifier-for-gmail/dcjichoefijpinlfnjghokpkojhlhkgl'

  app 'Google Notifier.app'

  caveats do
    discontinued
  end
end
