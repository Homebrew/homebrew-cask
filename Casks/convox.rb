cask 'convox' do
  version :latest
  sha256 :no_check

  url 'https://bin.equinox.io/c/jewmwFCp7w9/convox-stable-darwin-amd64.pkg'
  name 'Convox'
  homepage 'https://convox.com/'
  license :apache

  pkg 'convox-stable-darwin-amd64.pkg', allow_untrusted: true

  uninstall pkgutil: 'convox.convox'
end
