cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.16"
  sha256 arm:   "9dcd33446bfe81f2d6a67a8be0e35e3bdd26b1cbe3db0874568bf2554a7b1487",
         intel: "b075821898b0183efbeb89f838a76462ec3824669aa115a0894e855d1b72c277"

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
