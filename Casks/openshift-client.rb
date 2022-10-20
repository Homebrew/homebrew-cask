cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.10"
  sha256 arm:   "bc9ae37d96255956ae11d1ce2f167473df0246b9a4e374122c60bca8e8843357",
         intel: "d10f05029d12194ee022b29265bae91f769a6a166eb9eb5c7e7bbf812d9a948b"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
