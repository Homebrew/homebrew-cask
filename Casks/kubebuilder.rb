cask 'kubebuilder' do
  version '1.0.8'
  sha256 'a2a2db0db67c61e7ae958b9ff393e44a7032cd11b5e46acf9bd0a547e3fb9915'

  url "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v#{version}/kubebuilder_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/kubernetes-sigs/kubebuilder/releases.atom'
  name 'Kubebuilder'
  homepage 'https://github.com/kubernetes-sigs/kubebuilder'

  binary "kubebuilder_#{version}_darwin_amd64/bin/kubebuilder", target: "kubebuilder"
end
