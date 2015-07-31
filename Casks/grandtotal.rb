cask :v1 => 'grandtotal' do
  version '3.4.2'
  sha256 '55fa2bbdc8a10c5a07a3be2f09971282b1c78993ce5db07b969879c94fbb427f'

  url "http://mediaatelier.com/GrandTotal3/GrandTotal_#{version}.zip"
  appcast 'http://mediaatelier.com/GrandTotal3/feed.php',
          :sha256 => 'cb9ea0aa848e4af1ea06940262afa8203f748b9b787989915201572a1ac6935b'
  name 'GrandTotal'
  homepage 'http://www.mediaatelier.com/GrandTotal3/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app "GrandTotal #{version.to_i}.app"
end
