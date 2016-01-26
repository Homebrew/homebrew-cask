cask 'royal-tsx' do
  version '2.2.1.1000'
  sha256 '5622c6d7f3593c5b0f6056614f1afe45bceb9143ca05cb14867f8581de017a47'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          checkpoint: '0241765a554d894e57fab64b53395091bcb575003ebaed65da1f119ad4fbee40'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
