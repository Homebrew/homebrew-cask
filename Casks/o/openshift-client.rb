cask "openshift-client" do
  arch arm: "-arm64"

  version "4.20.1"
  sha256 arm:   "5a8d4d585de7b611ae648cf5570512d18e34fcc205116729caddb89411d80094",
         intel: "4106e686e04c378779498c275e6b157506bae74db3a80e311b7c16fac3d86bfc"

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
