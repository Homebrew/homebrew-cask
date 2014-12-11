cask :v1 => 'choose-wisely' do
  version '0.5'
  sha256 '2b7ef3de0563693a4b8fe895a4f5a9a131bfca2a74726db3380ffe6576c02b5f'

  url "https://tigion.de/projekte/software/choose-wisely_#{version.gsub('.','-')}.zip"
  homepage 'https://blog.tigion.de/2010/02/16/software-choose-wisely/'
  license :unknown    # todo: improve this machine-generated value

  app 'Choose Wisely.app'
end
