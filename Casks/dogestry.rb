cask :v1_1 => 'dogestry' do
  version '2.1.3'
  sha256 '2570f4b7817964d71103a33838b18f29edfabad53a6b95dc5334b6f9f30d138f'

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
