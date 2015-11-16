cask :v1_1 => 'dogestry' do
  version '2.1.2'
  sha256 '38435fc03f4221633d17f472629548978513e9e25e4c96aad6e2e594817c8598'

  url "https://github.com/dogestry/dogestry/releases/download/v#{version}/dogestry-darwin-#{version}"
  appcast 'https://github.com/dogestry/dogestry/releases.atom'
  name 'Dogestry'
  homepage 'https://github.com/dogestry/dogestry'
  license :mit

  container :type => :naked
  binary "dogestry-darwin-#{version}", :target => 'dogestry'

  postflight do
    set_permissions "#{staged_path}/dogestry-darwin-#{version}", '0755'
  end
end
