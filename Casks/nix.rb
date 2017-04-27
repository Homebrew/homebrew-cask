cask 'nix' do
  version '1.11.9'
  sha256 'ad2f1d7b2058883ae5835905a9cb69ec69ec54bf6ddf39e0d8f1ae0ac0f7743f'

  url "https://nixos.org/releases/nix/nix-#{version}/nix-#{version}-x86_64-darwin.tar.bz2"
  appcast 'https://nixos.org/releases/nix/latest/',
          checkpoint: '193b91caaced29a00326bf2ad4878eb626ae72fa09a89b646eeadb8dff6273d3'
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
