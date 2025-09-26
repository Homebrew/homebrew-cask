cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.14"
  sha256 arm:   "2a27b1cc9cba7eddaa1ad70692c7edfafc4e2a09d8d15e9b6550d077509430a4",
         intel: "a3b0dc77b3f74b812bbe379a86d0206c5cdaf5e0fc80c4825f7251219bd19a27"

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
