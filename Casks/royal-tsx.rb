cask :v1 => 'royal-tsx' do
  version '1.4.6.0'
  sha256 'e67580fcf344302d81df00a6c43559a9d27dc1cc90428663059a6675d5d09355'

  url "http://app.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://app.royaltsx.com/updates_stable.php',
          :sha256 => 'bb602755a8168a181b849f8d35c543207780d42c6b68ac69715bcdc713e5fd8e'
  homepage 'http://www.royaltsx.com'
  license :unknown

  app 'Royal TSX.app'
end
