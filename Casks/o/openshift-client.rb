cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.7"
  sha256 arm:   "d97b84603382e24c9927150b8bfe83be89b0e63f74a593d59022483a8d039600",
         intel: "129e1f614defcaa7d34913a7b0dbf541344478df4ee0bd744c5a93f35a125de9"

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
