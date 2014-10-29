cask :v1 => 'onlabs' do
  version '0.1.6'
  sha256 '978f8007880dc8f9bff34741785b7b0f8e0d7001fa995a7f2b1d887332142e00'

  url "https://github.com/lalyos/onlabs/releases/download/v#{version}/onlabs_darwin_amd64"
  homepage 'https://github.com/lalyos/onlabs'

  container :type => :naked

  binary 'onlabs_darwin_amd64', :target => 'onlabs'
  postflight do
    system '/bin/chmod', '755', "#{staged_path}/onlabs_darwin_amd64"
  end
end
