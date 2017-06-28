cask 'operadriver' do
  version '2.29'
  sha256 'bcb51661fcddf95d6414ef2a758ae663f91ca64731dd83131de69988212dabca'

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  appcast 'https://github.com/operasoftware/operachromiumdriver/releases.atom',
          checkpoint: '788a89281894453e05aaf927a6535725cbd28fb67fa59165958df589a67b10f4'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'

  binary 'operadriver'
end
