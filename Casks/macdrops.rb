cask :v1 => 'macdrops' do
  version '1.1'
  sha256 'c91f10418d8dd88f395603f9b824fc1ef319ec91affe2326cff5bce7f2bd63bb'

  url "https://interfacelift.com/apps/macdrops/v1/Macdrops_v#{version}.dmg"
  name 'Macdrops'
  homepage 'https://interfacelift.com/apps/macdrops/v1'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "Macdrops v#{version}.app"
end
