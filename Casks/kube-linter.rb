cask "kube-linter" do
  version "0.1.2"
  sha256 "c276e8a68026711662d8df9fbbd0cba91581873adf593ff8a4a9807428af62cc"

  url "https://github.com/stackrox/kube-linter/releases/download/#{version}/kube-linter-darwin.zip"
  appcast "https://github.com/stackrox/kube-linter/releases.atom"
  name "kube-linter"
  desc "Static analysis tool that checks Kubernetes YAML files and Helm charts"
  homepage "https://github.com/stackrox/kube-linter"

  depends_on macos: ">= :sierra"

  binary "kube-linter"
end
