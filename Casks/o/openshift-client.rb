cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.12"
  sha256 arm:   "21d1cdaa8b025df30d84d49f1cf90bd88617776b5412e0a9c92318d19268a3aa",
         intel: "9fb7bea9859b033b7219460bf8c59dcf57ab5b5185f7d71027c1f339e23de6a2"

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
