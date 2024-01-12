cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.9"
  sha256 arm:   "5faf3a691f023a0e266c43d6ac5ffe350bb5ed377f1198341c61d61770c35456",
         intel: "cfe1d29bb7c3f7d7fe33dd876749175e72e387ec222510057fa7f3a8e17ea287"

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
