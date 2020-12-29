cask "kubecontext" do
  version "2.0.0"
  sha256 "b99db399fb038f87ac054f2d0741137de2a9b343f01f32a1db1b3f6dc313d882"

  url "https://github.com/turkenh/KubeContext/releases/download/v#{version}/KubeContext.zip"
  appcast "https://github.com/turkenh/KubeContext/releases.atom"
  name "KubeContext"
  desc "Menu bar app for managing Kubernetes contexts"
  homepage "https://github.com/turkenh/KubeContext"

  app "KubeContext.app"
end
