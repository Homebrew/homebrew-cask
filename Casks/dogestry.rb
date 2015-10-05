cask :v1_1 => 'dogestry' do
  version '2.0.2'
  sha256 '2c1f6c8ac32ddb150ffccb877edef4b72727399f5cddade794825c3417ff2728'

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
