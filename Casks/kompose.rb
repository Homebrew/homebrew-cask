cask 'kompose' do
  version '0.1.2'
  sha256 '94c8c3829a67a23700f31b01ebf40e8ea22c9eea56fa4ac7a28645f35e5116b9'

  url "https://github.com/kubernetes-incubator/kompose/releases/download/v#{version}/kompose_darwin-amd64.tar.gz"
  appcast 'https://github.com/kubernetes-incubator/kompose/releases.atom',
          checkpoint: '6c6f43c0fd2fd502766df506fc128c0c04aab879c1d7150c989bfebf4b2a9a9a'
  name 'Kompose'
  homepage 'https://github.com/kubernetes-incubator/kompose'

  container type: :tar

  binary 'kompose_darwin-amd64/kompose', target: 'kompose'

  postflight do
    set_permissions "#{staged_path}/kompose_darwin-amd64/kompose", '0755'
  end
end
