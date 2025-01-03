cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.11"
  sha256 arm:   "32a1dc1dc78e4f47744925174bd6e1e82525e66e3dda3822c93e593b025dab37",
         intel: "a8535ce91b8f17175d578809cd9ab14b9d3807b7c5361b5682b2f341c4c3c5f8"

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
