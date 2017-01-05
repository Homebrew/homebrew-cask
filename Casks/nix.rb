cask 'nix' do
  version '1.11.5'
  sha256 '6e3bcc8602fd628409b06195e3e401bdb039040569ae49c072a58d308bce4f9c'

  url "https://nixos.org/releases/nix/nix-#{version}/nix-#{version}-x86_64-darwin.tar.bz2"
  name 'nix'
  homepage 'https://nixos.org/nix/'

  depends_on macos: '>= :yosemite'

  installer script: "nix-#{version}-x86_64-darwin/install",
            sudo:   false

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
                           ],
                     sudo: false
    end
  end

  uninstall delete: '/nix'

  zap delete: [
                '~/.nix-channels',
                '~/.nix-defexpr',
                '~/.nix-profile',
              ]
end
