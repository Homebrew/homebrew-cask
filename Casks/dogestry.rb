cask :v1 => 'dogestry' do
  version '1.4.1'
  sha256 '3db0ef89a9bc870905c3ee7ae857970ad843c95ac1a8ef93d6bf6f992016f0d0'

  url "https://github.com/dogestry/dogestry/releases/download/v#{version}/dogestry-darwin-#{version}"
  name 'Dogestry'
  homepage 'https://github.com/dogestry/dogestry'
  license :mit

  container :type => :naked
  binary "dogestry-darwin-#{version}", :target => 'dogestry'

  postflight do
    system '/bin/chmod', '--', '0755', "#{staged_path}/dogestry-darwin-#{version}"
  end
end
