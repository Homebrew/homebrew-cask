cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.1'
    sha256 '9f2730472bba9fd39554290f465d37c32792debc5b20c9840efd1f79d40ca94c'

    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  else
    version '4.0.1'
    sha256 '7713d5760bcbf5577e076a758693d918abbf08bd7b51caaa9b6793c7063ea8f3'

    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.dmg"
    appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml",
            checkpoint: '51133594ed34b6ed7286e3b9c03321d0d7e555927f09ccfc2de7f73125a1cfc1'
  end

  name 'Geekbench'
  homepage 'https://www.primatelabs.com/geekbench/'

  app "Geekbench #{version.major}.app"
end
