cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.15"
  sha256 arm:   "7d1a1c2085f04c2426c097e611c203f7b4b975d99d1e168e92a41e5b38334b2b",
         intel: "9e33c76ce54f4b8642e183d2dd7865f49e0741c0ca3418aff176769d10d2c7ab"

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
