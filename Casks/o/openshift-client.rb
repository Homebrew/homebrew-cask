cask "openshift-client" do
  arch arm: "-arm64"

  version "4.21.0"
  sha256 arm:   "c511b8a5a6147931005af78f8093b45d9acb1d95503f59abb042c6aa9285a2f6",
         intel: "d19983cc98bd5db5d03d80a5881d458c6778c564cd62d4e6f225abbf4629c8e4"

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
