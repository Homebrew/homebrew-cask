cask "openshift-client" do
  arch arm: "-arm64"

  version "4.20.4"
  sha256 arm:   "bc2f086928c4436e0183a9b46ecf4e956c76254007851cc536a57ff44a8630a6",
         intel: "24cb9f1c3bed767f5421e60ed4d5b847ecefd4b59a3bd64fb8ec7128d512f3b3"

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
