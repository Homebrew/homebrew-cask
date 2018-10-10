cask 'operadriver' do
  version '2.38'
  sha256 'e2e309ecd89a9f1a2dfef790a4a1e71ac2b8374ccdebd2f2bc51f1e971a72b85'

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  appcast 'https://github.com/operasoftware/operachromiumdriver/releases.atom'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'

  binary 'operadriver_mac64/operadriver'
end
