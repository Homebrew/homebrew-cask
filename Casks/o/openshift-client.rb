cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.8"
  sha256 arm:   "55ad9474f024de53bc153df545f57076d268eed1db57b8900bdb254747db31db",
         intel: "32a40de88b31941954416d8cbd95160fe181a4ddaab2e2b1c2d972dbbefb641f"

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
