cask :v1 => 'keepingyouawake' do
  version '1.1'
  sha256 '78abc2e8451be3120dc49886feae1894a5eecaa1d2d0f988b767729f97560cc6'

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  homepage 'https://github.com/newmarcel/KeepingYouAwake'
  license :mit

  app 'KeepingYouAwake.app'
end
