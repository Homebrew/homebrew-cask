cask "openshift-client" do
  arch arm: "-arm64"

  version "4.20.6"
  sha256 arm:   "b7ff495a8f4efb2a94c9c5354033f4853a6e95f53bc61d0139663f178e8effd7",
         intel: "6524cba2c4c62eacf86dab8bed0cdd434c2791e314385a5fc06fe390f8a03698"

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
