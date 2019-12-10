cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.2'
    sha256 '05e1b977a46648d38cf6c641be7ef34722200d0168a10d4372fca771ffa24e28'
  elsif MacOS.version <= :sierra
    version '4.4.2'
    sha256 '3c46e630a28a0752afd702fc1cd379edd2420001be22302c932e61751284c0cc'
  else
    version '5.0.4'
    sha256 'e996413fc2c6a1d4cd437b6b7427d5ae9a62912547dc9c981d43341ef659deae'
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
