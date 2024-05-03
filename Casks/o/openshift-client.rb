cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.12"
  sha256 arm:   "123946d192b14bcbc5594e13703159c9de12336bff1a8a70e7b6a508d9febde0",
         intel: "47156497b4432b6f31db3d6a9df387652df18a2a558667077d4f0266fbeb9702"

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
