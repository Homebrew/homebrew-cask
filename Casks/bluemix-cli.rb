cask 'bluemix-cli' do
  version '0.4.1'
  sha256 'bb769cc0c4f5d9e5c1590b1cb876be0566083f9ca3d6110e98d317aacfc87d79'

  # public.dhe.ibm.com was verified as official when first introduced to the cask
  url "https://public.dhe.ibm.com/cloud/bluemix/cli/bluemix-cli/Bluemix_CLI_#{version}.pkg"
  name 'Bluemix-CLI'
  homepage 'https://clis.ng.bluemix.net/ui/home.html'
  license :closed

  pkg "Bluemix_CLI_#{version}.pkg"

  uninstall_postflight do
    system('/usr/bin/sudo', '/usr/bin/sed', '-E', '-i', '.bluemix_uninstall_bak', '-e', '/^### Added by the Bluemix CLI$/d', '-e', '/^source \/usr\/local\/Bluemix\/bx\/bash_autocomplete$/d', '/etc/profile') if File.exist?('/etc/profile')
    system('/usr/bin/sed', '-E', '-i', '.bluemix_uninstall_bak', '-e', '/^### Added by the Bluemix CLI$/d', '-e', '/^source \/usr\/local\/Bluemix\/bx\/bash_autocomplete$/d', "#{ENV['HOME']}/.bashrc") if File.exist?("#{ENV['HOME']}/.bashrc")
    system('/usr/bin/sed', '-E', '-i', '.bluemix_uninstall_bak', '-e', '/^### Added by the Bluemix CLI$/d', '-e', '/^source \/usr\/local\/Bluemix\/bx\/zsh_autocomplete$/d', "#{ENV['HOME']}/.zshrc") if File.exist?("#{ENV['HOME']}/.zshrc")
  end

  uninstall pkgutil: 'com.ibm.bluemix.cli',
            delete:  [
                       '/usr/local/Bluemix',
                       '/usr/local/bin/bx',
                       '/usr/local/bin/bluemix',
                     ]
end
