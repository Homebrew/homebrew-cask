cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.12"
  sha256 arm:   "c4af2bef48d604b03f2572b35060d6bb84c250b304931a910d245d09ebc48a34",
         intel: "b4d2e7a5871065f008005dc0d94188232e513c0096628c4faa57766800de6231"

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
