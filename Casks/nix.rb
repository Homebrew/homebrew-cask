cask 'nix' do
  version '2.0.1'
  sha256 '6978134ade6dcc3f5a9b3ceb42bf4d61f67f4fcffaed874e8f7631993f8e0370'

  url "https://nixos.org/releases/nix/nix-#{version}/nix-#{version}-x86_64-darwin.tar.bz2"
  appcast 'https://nixos.org/releases/nix/latest/',
          checkpoint: 'a6f97ec9f35e93888edbc57268c8bbb0598bb41cf52ba9bb398a9372e937515b'
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
