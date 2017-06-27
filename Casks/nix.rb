cask 'nix' do
  version '1.11.11'
  sha256 '71acf1f50ab56958c91563f3a61d58f71eccb96fd8b27410a0da4f6d2fd150e3'

  url "https://nixos.org/releases/nix/nix-#{version}/nix-#{version}-x86_64-darwin.tar.bz2"
  appcast 'https://nixos.org/releases/nix/latest/',
          checkpoint: '74209f70bc975981203f9e6d31910d7737032de5200a866663d74c9293303129'
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
