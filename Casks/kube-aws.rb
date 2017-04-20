cask 'kube-aws' do
  version '0.8.1'
  sha256 'a787e1a61eb3817184f7f6dba429bf09bcd428c3827604fe6c2652c6f870c7ff'

  url "https://github.com/coreos/coreos-kubernetes/releases/download/v#{version}/kube-aws-darwin-amd64.tar.gz"
  name 'kube-aws'
  homepage 'https://github.com/coreos/coreos-kubernetes/tree/master/multi-node/aws'
  license :apache

  binary 'darwin-amd64/kube-aws'
end
