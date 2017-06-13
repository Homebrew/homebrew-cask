cask 'nix' do
  version '1.11.10'
  sha256 '2eb2c2f73ae3a241bd7d451f7935356252ec58b93573c43b82d6c032113e5cf7'

  url "https://nixos.org/releases/nix/nix-#{version}/nix-#{version}-x86_64-darwin.tar.bz2"
  appcast 'https://nixos.org/releases/nix/latest/',
          checkpoint: 'a07e10bb1758a1841a8e68edad1a505feff64a913cbcaa1cbe79ae0415e72aaf'
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
