cask 'nix' do
  version '1.11.6'
  sha256 '66896f137d02175cc0c0318b130761d4e30416834deaf103e3dccc28c24fe643'

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
