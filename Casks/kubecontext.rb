cask "kubecontext" do
  version "1.23"
  sha256 "262d0e2c2843c0e0220b557e02091d06c64e403b5ff09f09351f6e81841c8ac5"

  url "https://github.com/turkenh/KubeContext/releases/download/v#{version}/KubeContext.zip"
  appcast "https://github.com/turkenh/KubeContext/releases.atom"
  name "KubeContext"
  desc "Menu bar app for managing Kubernetes contexts"
  homepage "https://github.com/turkenh/KubeContext"

  app "KubeContext.app"
end
