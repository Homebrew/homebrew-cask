cask 'dogestry' do
  version '2.1.6'
  sha256 '8d419c8ddfe66fca0727f5bbe8669e76e3c4ab0004bd15ffd4bccdb2c06c17c5'

  url "https://github.com/dogestry/dogestry/releases/download/v#{version}/dogestry-darwin-#{version}"
  appcast 'https://github.com/dogestry/dogestry/releases.atom',
          checkpoint: 'd0ff6f8042ac78a4bf2376ea679b8474ba958ad1346b1a1b846e035c32e46b67'
  name 'Dogestry'
  homepage 'https://github.com/dogestry/dogestry'

  container type: :naked

  binary "dogestry-darwin-#{version}", target: 'dogestry'

  postflight do
    set_permissions "#{staged_path}/dogestry-darwin-#{version}", '0755'
  end
end
