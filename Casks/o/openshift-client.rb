cask "openshift-client" do
  arch arm: "-arm64"

  version "4.20.8"
  sha256 arm:   "9b4bc7131ab25e7811a1dcf89f68b2595910788d63efc0e2acbdd39f971325e8",
         intel: "1b44565e951c8c6b4330b330214ed2c8b3d756dde9a406f00fa0b3a2a1ac4bca"

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
