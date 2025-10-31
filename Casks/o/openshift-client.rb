cask "openshift-client" do
  arch arm: "-arm64"

  version "4.20.2"
  sha256 arm:   "e16261fccddd9df2b4da66b5099b9436429a4eff749102a64b2e4f684e32bbee",
         intel: "c5bc78e7f7b635ac74a3036027935c7d5d38558388ed1fc8d96a28ab926a65b8"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "oc"

  zap trash: "~/.kube/config"
end
