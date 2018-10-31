cask 'opa' do
  version '0.10.1'
  sha256 :no_check

  url "https://github.com/open-policy-agent/opa/releases/download/v#{version}/opa_darwin_amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom'
  name 'Open Policy Agent'
  homepage 'https://github.com/open-policy-agent/opa'

  container type: :naked

  binary 'opa_darwin_amd64', target: 'opa'
end
