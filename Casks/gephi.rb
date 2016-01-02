cask 'gephi' do
  version '0.9.0'
  sha256 '359301e7720f50bee26fa2df86044f9aa9b284c34bd5734f9434f4db4d55632f'

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos.dmg"
  appcast 'https://github.com/gephi/gephi/releases.atom',
          :sha256 => '35c743eda7cc503f5acdcecdf505a53450971bed680c1851bff42f15d9057ebc'
  name 'Gephi'
  homepage 'https://gephi.github.io/'
  license :oss

  app 'Gephi.app'
end
