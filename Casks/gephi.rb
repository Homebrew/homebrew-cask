cask 'gephi' do
  version '0.9.0'
  sha256 '359301e7720f50bee26fa2df86044f9aa9b284c34bd5734f9434f4db4d55632f'

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos.dmg"
  appcast 'https://github.com/gephi/gephi/releases.atom',
          :sha256 => 'df39806f9fe19cb0fff4d9a607aad4919a38c174c33daf3c3f3a786d80b0f4f7'
  name 'Gephi'
  homepage 'https://gephi.github.io/'
  license :oss

  app 'Gephi.app'
end
