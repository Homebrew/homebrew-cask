cask 'dogestry' do
  version '2.1.6'
  sha256 '8d419c8ddfe66fca0727f5bbe8669e76e3c4ab0004bd15ffd4bccdb2c06c17c5'

  url "https://github.com/dogestry/dogestry/releases/download/v#{version}/dogestry-darwin-#{version}"
  appcast 'https://github.com/dogestry/dogestry/releases.atom',
          checkpoint: '736cca14bc61906dff0cbd27728d9b0bd11a17740116d23a079377f91153b03a'
  name 'Dogestry'
  homepage 'https://github.com/dogestry/dogestry'

  container type: :naked

  binary "dogestry-darwin-#{version}", target: 'dogestry'

  postflight do
    set_permissions "#{staged_path}/dogestry-darwin-#{version}", '0755'
  end
end
