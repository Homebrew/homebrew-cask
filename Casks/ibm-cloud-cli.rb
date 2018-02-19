cask 'ibm-cloud-cli' do
  version '0.6.5'
  sha256 '718a6dd70b3bc1af43c9371bf0f432ffb2918c8defb26b4de7a554aef9c8fdf4'

  # public.dhe.ibm.com/cloud/bluemix/cli/bluemix-cli was verified as official when first introduced to the cask
  url "https://public.dhe.ibm.com/cloud/bluemix/cli/bluemix-cli/#{version}/IBM_Cloud_CLI_#{version}.pkg"
  appcast 'https://github.com/IBM-Cloud/ibm-cloud-cli-release/releases.atom',
          checkpoint: 'db99ee28d9d8bf308abe04b856c056488f84c3aac62e66bf2c87c632c1bc7c96'
  name 'Bluemix-CLI'
  name 'IBM Cloud CLI'
  homepage 'https://clis.ng.bluemix.net/ui/home.html'

  pkg "IBM_Cloud_CLI_#{version}.pkg"

  uninstall_postflight do
    if File.exist?('/etc/profile')
      system_command '/usr/bin/sed',
                     args: [
                             '-E',
                             '-i', '.bluemix_uninstall_bak',
                             '-e', '/^### Added by IBM Cloud CLI$/d',
                             '-e', '/^source \/usr\/local\/Bluemix\/bx\/bash_autocomplete$/d',
                             '/etc/profile'
                           ],
                     sudo: true
    end

    if File.exist?("#{ENV['HOME']}/.bashrc")
      system_command '/usr/bin/sed',
                     args: [
                             '-E',
                             '-i', '.bluemix_uninstall_bak',
                             '-e', '/^### Added by IBM Cloud CLI$/d',
                             '-e', '/^source \/usr\/local\/Bluemix\/bx\/bash_autocomplete$/d',
                             "#{ENV['HOME']}/.bashrc"
                           ]
    end

    if File.exist?("#{ENV['HOME']}/.zshrc")
      system_command '/usr/bin/sed',
                     args: [
                             '-E',
                             '-i', '.bluemix_uninstall_bak',
                             '-e', '/^### Added by IBM Cloud CLI$/d',
                             '-e', '/^source \/usr\/local\/Bluemix\/bx\/zsh_autocomplete$/d',
                             "#{ENV['HOME']}/.zshrc"
                           ]
    end
  end

  uninstall pkgutil: 'com.ibm.cloud.cli',
            delete:  [
                       '/usr/local/Bluemix',
                       '/usr/local/bin/bluemix',
                       '/usr/local/bin/bluemix-analytics',
                     ]

  caveats do
    files_in_usr_local
  end
end
