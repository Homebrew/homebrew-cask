cask "openshift-client" do
  arch arm: "-arm64"

  version "4.21.3"
  sha256 arm:   "e4f8741dc972cc5fe39f6a9e848dad50e73d20ad678a32990d110317dc491c41",
         intel: "4ead52e58d642fed9e29220a1c0729beca718e3e44a3ee748d28e1ab078a453d"

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
