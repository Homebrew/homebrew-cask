cask "openshift-client" do
  arch arm: "-arm64"

  version "4.20.12"
  sha256 arm:   "e2daa2f4bdfa72a11aa02db9bacf12de5c1763d1eed5d228d2294fdffef57bcb",
         intel: "5559fd4715bb019f97b33192d7628457a9b3dc3a06dd8dec328490f43957ec2e"

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
