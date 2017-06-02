cask 'dogestry' do
  version '2.1.6'
  sha256 '8d419c8ddfe66fca0727f5bbe8669e76e3c4ab0004bd15ffd4bccdb2c06c17c5'

  url "https://github.com/dogestry/dogestry/releases/download/v#{version}/dogestry-darwin-#{version}"
  appcast 'https://github.com/dogestry/dogestry/releases.atom',
          checkpoint: '645d70f9bce4da5251f54d6a2ad7d6ae9ac4e443d4bbd2638d1c8f268c5629f9'
  name 'Dogestry'
  homepage 'https://github.com/dogestry/dogestry'

  container type: :naked

  binary "dogestry-darwin-#{version}", target: 'dogestry'

  postflight do
    set_permissions "#{staged_path}/dogestry-darwin-#{version}", '0755'
  end
end
