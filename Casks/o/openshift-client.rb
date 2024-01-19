cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.10"
  sha256 arm:   "d5a27fe17574d64d05a19c0ebdf26220902eed7e8a7f733dd4b2306d184b3acd",
         intel: "ce7430bac3f6b9b4d3c6683b7ae96486b908cd00425bf433d10e7cd05c35078e"

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
