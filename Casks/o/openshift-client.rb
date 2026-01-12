cask "openshift-client" do
  arch arm: "-arm64"

  version "4.20.10"
  sha256 arm:   "8e7aaabd0a433428908165a7f9df0560694a19c22a0b3077eba0c14060edc5ca",
         intel: "caa731c9c4096e3d952e57249011f63e9ebb94f32c0c07ecfd0f052725f7bdb7"

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
