cask :v1 => 'hub' do
  version '2.2.0-rc1'

  if Hardware::CPU.is_32_bit?
    sha256 '6e41b6e964e56caa9cc363411b4a54e22ece5613c0c425dbb755fce6928ba2db'
    url "https://github.com/github/hub/releases/download/#{version}/hub_#{version}_mac_386.gz.tar"
    binary "hub_#{version}_mac_386/hub"
  else
    sha256 '57e62305b983e4e292b0a503ab5e17701a5624ae640fd67c3d776415a85733f6'
    url "https://github.com/github/hub/releases/download/v#{version}/hub_#{version}_mac_amd64.gz.tar"
    binary "hub_#{version}_mac_amd64/hub"
  end

  name 'hub'
  homepage 'https://github.com/github/hub'
  license :mit
end
