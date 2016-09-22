cask 'geekbench' do
  version '4.0.1'
  sha256 '7713d5760bcbf5577e076a758693d918abbf08bd7b51caaa9b6793c7063ea8f3'

  url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.dmg"
  appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml",
          checkpoint: '51133594ed34b6ed7286e3b9c03321d0d7e555927f09ccfc2de7f73125a1cfc1'
  name 'Geekbench'
  homepage 'https://www.primatelabs.com/geekbench/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app "Geekbench #{version.major}.app"
end
