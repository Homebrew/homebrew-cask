cask 'geekbench' do
  if MacOS.version <= :sierra
    version '4.4.2'
    sha256 '3c46e630a28a0752afd702fc1cd379edd2420001be22302c932e61751284c0cc'
  else
    version '5.2.2'
    sha256 '0b9091b94fde9c521e23a2cf9f2a6cf82bb99646a895c49ada26c6def10534c8'
  end

  url "https://cdn.geekbench.com/Geekbench-#{version}-Mac.zip"
  appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml"
  name 'Geekbench'
  homepage 'https://www.geekbench.com/'

  auto_updates true

  app "Geekbench #{version.major}.app"

  zap trash: [
               "~/Library/Caches/com.primatelabs.Geekbench#{version.major}",
               "~/Library/Preferences/com.primatelabs.Geekbench#{version.major}.plist",
             ]
end
