cask "openshift-client" do
  arch arm: "-arm64"

  version "4.20.11"
  sha256 arm:   "217235a91bbc1967327ba29057a8a18304b747da888877a5d52d929908e934bc",
         intel: "ac19e25e61c0adaa3acb821b973920c8ecfab39120481bc7b01cbdf202ab7c40"

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
