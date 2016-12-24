cask 'bluemix-cli' do
  version '0.4.5'
  sha256 'f530425f166e830f01dc68c10f4720ef5d1c189d70698360d5b2d68be8644e12'

  # public.dhe.ibm.com was verified as official when first introduced to the cask
  url "https://public.dhe.ibm.com/cloud/bluemix/cli/bluemix-cli/Bluemix_CLI_#{version}.pkg"
  appcast 'https://clis.ng.bluemix.net/ui/all_versions.html',
          checkpoint: '83ca45ba084621c0e8a37f7f0b39adf4887cd26cbb4d9b6c5c713a6531704a23'
  name 'Bluemix-CLI'
  homepage 'https://clis.ng.bluemix.net/ui/home.html'

  pkg "Bluemix_CLI_#{version}.pkg"

  uninstall_postflight do
    if File.exist?('/etc/profile')
      system_command '/usr/bin/sed',
                     args: [
                             '-E',
                             '-i', '.bluemix_uninstall_bak',
                             '-e', '/^### Added by the Bluemix CLI$/d',
                             '-e', '/^source \/usr\/local\/Bluemix\/bx\/bash_autocomplete$/d', '/etc/profile'
                           ],
                     sudo: true
    end

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
