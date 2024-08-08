cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.7"
  sha256 arm:   "3193ea30e0ed76915658509c7628d9fb5c9a6d72bfc8f344841355fdd8fbd682",
         intel: "77dc5eab356b48252c0f1c8e854d43eeb004c779e4ddb0322cb5fdf92cdab557"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
