class Brytonbridge < Cask
  url 'http://static.brytonsport.com/uploads/www/Software/version/14/BrytonBridge2.pkg'
  homepage 'http://www.brytonsport.com/help/start'
  version 'latest'
  sha256 :no_check
  install 'BrytonBridge2.pkg'
  uninstall :pkgutil => 'com.brytonsport.pkg.BrytonBridge2',
            :quit    => 'com.yourcompany.BrytonBridge',
            :files   => [
              '/Applications/BrytonBridge2',
              "ENV['HOME']/Library/Saved Application State/com.yourcompany.BrytonBridge.savedState"
            ]
end
