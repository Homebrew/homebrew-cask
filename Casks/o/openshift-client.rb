cask "openshift-client" do
  arch arm: "-arm64"

  version "4.21.2"
  sha256 arm:   "6fce587ed408fcdf9f9a79e4ddaa3979a63d9952f2555417c2ed13dcdddc0a92",
         intel: "760519391e1e369d2a83d19a74671ffe6aaf0e1d64fb02efaa96af1c5af7a347"

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
