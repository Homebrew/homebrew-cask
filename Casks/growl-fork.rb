cask :v1 => 'growl-fork' do
  version '1.2.2f1'
  sha256 'b57085eed9bafcafa75bdc2a4a482c77d33ebf2f1d9994bf5ff5a997c3958bcc'

  url "https://bitbucket.org/pmetzger/growl/downloads/Growl-#{version}.dmg"
  homepage 'https://bitbucket.org/pmetzger/growl'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Growl.pkg'

  uninstall :delete => '/Library/PreferencePanes/Growl.prefPane'
  zap       :delete => [
                        '~/Library/Application Scripts/com.Growl.GrowlHelperApp',
                        '~/Library/Containers/com.Growl.GrowlHelperApp',
                        '~/Library/Containers/com.growl.GrowlLauncher',
                       ]
end
