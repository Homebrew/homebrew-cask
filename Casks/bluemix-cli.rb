cask 'bluemix-cli' do
  version '0.3.3'
  sha256 '1ec49412f26e52cb588aa71df89e623e4e1fadd57f1fe55f99aad45ede776449'

  # public.dhe.ibm.com was verified as official when first introduced to the cask
  url "https://public.dhe.ibm.com/cloud/bluemix/cli/bluemix-cli/Bluemix_CLI_#{version}.pkg"
  name 'Bluemix-CLI'
  homepage 'https://clis.ng.bluemix.net/ui/home.html'
  license :closed

  pkg "Bluemix_CLI_#{version}.pkg"

  uninstall pkgutil:      'com.ibm.bluemix.cli',
            early_script: {
                            executable:   '/usr/bin/sed',
                            args:         [
                                            '-E',
                                            '-i', '.bak',
                                            '-e', '/^### Added by the Bluemix CLI$/d',
                                            '-e', '/^source \/usr\/local\/Bluemix\/bx\/bash_autocomplete$/d',
                                            '/etc/profile',
                                            "#{ENV['HOME']}/.bashrc"
                                          ],
                            must_succeed: false,
                          },
            delete:       [
                            '/usr/local/Bluemix',
                            '/usr/local/bin/bx',
                            '/usr/local/bin/bluemix',
                          ],
            script:       {
                            executable:   '/usr/bin/sed',
                            args:         [
                                            '-E',
                                            '-i', '.bak',
                                            '-e', '/^### Added by the Bluemix CLI$/d',
                                            '-e', '/^source \/usr\/local\/Bluemix\/bx\/zsh_autocomplete$/d',
                                            "#{ENV['HOME']}/.zshrc"
                                          ],
                            must_succeed: false,
                          }
end
