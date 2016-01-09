cask 'cleanmymac' do
  if MacOS.release <= :snow_leopard
    version '1.11-1417522595'
    sha256 'ac5d4bf36882dd34bdb0a68eb384a6b3aba355be896d03dfa40a120c6bef4a0d'

    # devmate.com is the official download host per the appcast feed
    url "https://dl.devmate.com/com.macpaw.CleanMyMac/#{version.sub(%r{-.*$}, '')}/#{version.sub(%r{.*?-}, '')}/CleanMyMacClassic-#{version.sub(%r{-.*$}, '')}.zip"
    appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac.xml',
            :sha256 => '13bbf950696a9410fec848e80652f2826209b347fdb329b117371e25445951f5'
    app 'CleanMyMac.app'
    # TODO: add uninstall and zap stanzas for legacy app
  elsif MacOS.release <= :lion
    version '2.4-1443544143'
    sha256 '0d08f4d9b36493359f6ca3ff2f96a9b769a8eed4ea017ecbb2d5644f75aafad0'
    # devmate.com is the official download host per the appcast feed
    url "https://dl.devmate.com/com.macpaw.CleanMyMac2/#{version.sub(%r{-.*$}, '')}/#{version.sub(%r{.*?-}, '')}/CleanMyMac#{version.to_i}-#{version.sub(%r{-.*$}, '')}.zip"
    appcast "http://updates.devmate.com/com.macpaw.CleanMyMac#{version.to_i}.xml",
            :sha256 => '612be3e443f49b6b1d5539611693714b2897b9b774896ac15c048daec76a34cb'
    app "CleanMyMac #{version.to_i}.app"

    uninstall :launchctl => "com.macpaw.CleanMyMac#{version.to_i}.Agent"

    zap :delete => [
                     "/Library/LaunchDaemons/com.macpaw.CleanMyMac#{version.to_i}.Agent.plist",
                     "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.to_i}.Agent",
                     "/Users/Shared/CleanMyMac #{version.to_i}",
                     "/private/var/run/com.macpaw.CleanMyMac#{version.to_i}.Agent.socket",
                     "~/Library/Application Support/CleanMyMac #{version.to_i}",
                     "~/Library/Caches/CleanMyMac #{version.to_i}",
                     "~/Library/Logs/CleanMyMac #{version.to_i}.log",
                     "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.to_i}-Helper.plist",
                     "~/Library/Preferences/com.macpaw.CleanMyMac#{version.to_i}.KnowledgeBase.plist",
                     "~/Library/Preferences/com.macpaw.CleanMyMac#{version.to_i}.plist",
                   ]
  else
    version '3.3.0-1451475053'
    sha256 '14038d3554f771e32840dbd0936235d62b95713638b4b1ca94daf32847da389f'

    # devmate.com is the official download host per the appcast feed
    url "https://dl.devmate.com/com.macpaw.CleanMyMac#{version.to_i}/#{version.sub(%r{-.*$}, '')}/#{version.sub(%r{.*?-}, '')}/CleanMyMac3-#{version.sub(%r{-.*$}, '')}.zip"
    appcast "http://updates.devmate.com/com.macpaw.CleanMyMac#{version.to_i}.xml",
            :sha256 => 'e62a4026c55f52a3c31a0070e8fb9d49c63244697dff9332a3ab37f74d02c5aa'
    app "CleanMyMac #{version.to_i}.app"

    postflight do
      suppress_move_to_applications
    end

    uninstall :launchctl => "com.macpaw.CleanMyMac#{version.to_i}.Agent"

    zap :delete => [
                     "/Library/LaunchDaemons/com.macpaw.CleanMyMac#{version.to_i}.Agent.plist",
                     "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.to_i}.Agent",
                     "/Users/Shared/CleanMyMac #{version.to_i}",
                     "/private/var/run/com.macpaw.CleanMyMac#{version.to_i}.Agent.socket",
                     "~/Library/Application Support/CleanMyMac #{version.to_i}",
                     "~/Library/Application Support/CleanMyMac #{version.to_i} Menu",
                     "~/Library/Caches/CleanMyMac #{version.to_i}",
                     "~/Library/Logs/CleanMyMac #{version.to_i}.log",
                     "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.to_i}-Helper.plist",
                     "~/Library/Preferences/com.macpaw.CleanMyMac#{version.to_i}.KnowledgeBase.plist",
                     "~/Library/Preferences/com.macpaw.cleanmymac#{version.to_i}.menu.plist",
                     "~/Library/Preferences/com.macpaw.CleanMyMac#{version.to_i}.plist",
                   ]
  end

  name 'CleanMyMac'
  homepage 'https://macpaw.com/cleanmymac'
  license :commercial
end
