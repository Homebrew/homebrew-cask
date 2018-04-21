cask 'ibm-cloud-cli' do
  version '0.6.6'
  sha256 '6775eb06101a6e626f3fd1864bef73898b2d6593f177ab7df027d564ea539211'

  # public.dhe.ibm.com/cloud/bluemix/cli/bluemix-cli was verified as official when first introduced to the cask
  url "https://public.dhe.ibm.com/cloud/bluemix/cli/bluemix-cli/#{version}/IBM_Cloud_CLI_#{version}.pkg"
  appcast 'https://github.com/IBM-Cloud/ibm-cloud-cli-release/releases.atom',
          checkpoint: '0b283ebf404645722c1bf2596b25f4c41e4943662bf5153d36241fd3ab3ea69c'
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
