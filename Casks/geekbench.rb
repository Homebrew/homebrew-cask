cask 'geekbench' do
  if MacOS.version <= :sierra
    version '4.4.2'
    sha256 '3c46e630a28a0752afd702fc1cd379edd2420001be22302c932e61751284c0cc'
  else
    version '5.1.1'
    sha256 'd14c813f9a8d9cbf643d0f5bffe42f084df63b2095bec86b152157a43a814b1b'
  end

  url "https://cdn.geekbench.com/Geekbench-#{version}-Mac.zip"
  appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml"
  name 'Geekbench'
  homepage 'https://www.geekbench.com/'

  app "Geekbench #{version.major}.app"

  zap trash: [
               "~/Library/Caches/com.primatelabs.Geekbench#{version.major}",
               "~/Library/Preferences/com.primatelabs.Geekbench#{version.major}.plist",
             ]
end
