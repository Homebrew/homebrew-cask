cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.15"
  sha256 arm:   "f8e1413dff3159fd00036310f9cff6cf6859697f6ebab65b5571d740620ca010",
         intel: "da97b5e2bd2921739cb919e306c0061ef6acd084fb838d5903f0ebde345a588f"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
