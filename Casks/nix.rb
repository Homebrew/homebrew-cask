cask 'nix' do
  version '1.11.5'
  sha256 '6e3bcc8602fd628409b06195e3e401bdb039040569ae49c072a58d308bce4f9c'

  url "https://nixos.org/releases/nix/nix-#{version}/nix-#{version}-x86_64-darwin.tar.bz2"
  name 'nix'
  homepage 'https://nixos.org/nix/'

  depends_on macos: '>= :yosemite'

  installer script: "nix-#{version}-x86_64-darwin/install", sudo: false

  uninstall delete: [
                      '/nix',
                      '~/.nix-channels',
                      '~/.nix-defexpr',
                      '~/.nix-profile'.
                    ]
end
