cask 'nix' do
  version '1.11.15'
  sha256 'd2414c6142f1162cc8b1c02bedcbff4c70142618301a643ddaa76e8991f915ed'

  url "https://nixos.org/releases/nix/nix-#{version}/nix-#{version}-x86_64-darwin.tar.bz2"
  appcast 'https://nixos.org/releases/nix/latest/',
          checkpoint: '5dedcaa09bb8008b1cb6b89c0dc5533a25a8601adea0d5b2ca61d3a8708b1700'
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
