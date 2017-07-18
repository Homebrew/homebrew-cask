cask 'nix' do
  version '1.11.13'
  sha256 '54376012e8d6825560602015719fb31e19ca66c17ea0919bb1f6455a9d972115'

  url "https://nixos.org/releases/nix/nix-#{version}/nix-#{version}-x86_64-darwin.tar.bz2"
  appcast 'https://nixos.org/releases/nix/latest/',
          checkpoint: 'e156d4dfa377a5e52805fe3cb9ae42bd49e64dbf65f396406be2ba880fff82c3'
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

  zap trash: [
               '~/.nix-channels',
               '~/.nix-defexpr',
               '~/.nix-profile',
             ]
end
