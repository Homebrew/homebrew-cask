cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.2'
    sha256 '05e1b977a46648d38cf6c641be7ef34722200d0168a10d4372fca771ffa24e28'
  else
    version '4.4.0'
    sha256 '89739ac7a904ce92328647ff0c6747107b2732b08dc257ed2537db5672df45b4'
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
