cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.4"
  sha256 arm:   "e01c274ebb258a7bbaa7727f834eda5dfe4c14a03d5b89312f4a41d1847fc69f",
         intel: "a9f5b2be8f33e716fefa62d7da05f8c8a545aa49033c212287840150ff00fe01"

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
