cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.10"
  sha256 arm:   "e4b47ec13e452aea2cf14ca602ce2bbccc9519f6f3deb0e9388f007c3a865ca5",
         intel: "7521e0d0e55ffbd7ead70893fd5a8577db2a3fd6a997693fa9d9a8b470a7c163"

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
