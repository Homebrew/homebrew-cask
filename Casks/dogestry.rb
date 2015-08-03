cask :v1_1 => 'dogestry' do
  version '2.0.1'
  sha256 '71a33b0c0b9c432df998d235693a765cdcefb0c7cefe9a45653a9f673da9349e'

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
