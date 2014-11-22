cask :v1 => 'onlabs' do
  version '0.1.9'
  sha256 '4fa575158f80d60f40826fab0b77217cc343ca0fc4af5e7840c606a4f4bd97c5'

  url "https://github.com/lalyos/onlabs/releases/download/v#{version}/onlabs_darwin_amd64"
  homepage 'https://github.com/lalyos/onlabs'

  container :type => :naked

  binary 'onlabs_darwin_amd64', :target => 'onlabs'
  postflight do
    system '/bin/chmod', '755', "#{staged_path}/onlabs_darwin_amd64"
  end
end
