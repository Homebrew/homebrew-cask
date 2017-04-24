cask 'nix' do
  version '1.11.8'
  sha256 '65093cbd779afe943667097c3cc80dc83082f8d876744598fd40e7855603f7f8'

  url "https://nixos.org/releases/nix/nix-#{version}/nix-#{version}-x86_64-darwin.tar.bz2"
  appcast 'https://nixos.org/releases/nix/latest/',
          checkpoint: '70362d7bedcf593d01fb229cc48ec96be6d2b5634d9efa2d819e4eb386d9ae87'
  name 'nix'
  homepage 'https://nixos.org/nix/'

  depends_on macos: '>= :yosemite'

  installer script: "nix-#{version}-x86_64-darwin/install"

  uninstall_postflight do
    ['~/.bash_profile', '~/.bash_login', '~/.profile'].each do |profile_path|
      profile_path = File.expand_path(profile_path)

      next unless File.exist?(profile_path)
      system_command '/usr/bin/sed',
                     args: [
                             '-E',
                             '-i', '.nix_uninstall_bak',
                             '-e', '/# added by Nix installer/d',
                             profile_path
                           ]
    end
  end

  uninstall delete: '/nix'

  zap delete: [
                '~/.nix-channels',
                '~/.nix-defexpr',
                '~/.nix-profile',
              ]
end
