cask "openshift-client" do
  arch arm: "-arm64"

  version "4.20.5"
  sha256 arm:   "d82d34681a1a7fd90b5f04395169ccfafb2ab71f558bd8c19a051618428140eb",
         intel: "cd2133bdf080d50f37a13db76f233207531ea7d92d7fc04cf5de0862755b658b"

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
