cask 'nix' do
  version '2.0.2'
  sha256 '3c22d1591b4b39c69054839311cb024ea531d8a57019ec18ff60449a596962a0'

  url "https://nixos.org/releases/nix/nix-#{version}/nix-#{version}-x86_64-darwin.tar.bz2"
  appcast 'https://nixos.org/releases/nix/latest/',
          checkpoint: 'dc503c1f1a127b83195e6ebebd5796c25294c5815c904099145b329ae20ac4eb'
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

  uninstall delete:    '/nix',
            launchctl: 'org.nixos.nix-daemon'

  zap trash: [
               '~/.nix-channels',
               '~/.nix-defexpr',
               '~/.nix-profile',
             ]
end
