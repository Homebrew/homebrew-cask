class RoyalTsx < Cask
  version '1.3.0.0'
  sha256 '2306ae0579b097ccf4796f9cc08012819d3e55d5025a1424c8eca5330cdaedf5'

  url "http://app.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://app.royaltsx.com/updates_stable.php',
          :sha256 => 'bb602755a8168a181b849f8d35c543207780d42c6b68ac69715bcdc713e5fd8e'
  homepage 'http://www.royaltsx.com'
  license :unknown

  app 'Royal TSX.app'
end
