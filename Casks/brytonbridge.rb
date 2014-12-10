cask :v1 => 'brytonbridge' do
  version :latest
  sha256 :no_check

  url 'http://static.brytonsport.com/uploads/www/Software/version/14/BrytonBridge2.pkg'
  homepage 'http://www.brytonsport.com/help/start'
  license :unknown    # todo: improve this machine-generated value

  pkg 'BrytonBridge2.pkg'

  uninstall :pkgutil => 'com.brytonsport.pkg.BrytonBridge2',
            :quit    => 'com.yourcompany.BrytonBridge',
            :delete  => '/Applications/BrytonBridge2'
  zap       :delete   => '~/Library/Saved Application State/com.yourcompany.BrytonBridge.savedState'
end
