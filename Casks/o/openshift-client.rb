cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.8"
  sha256 arm:   "510954f24ab86ca5d77df2901a068ab5371f87e0b967f041ea46671a273054d4",
         intel: "97c625708f1e4a46248e66bc7b1962f58461ea425d7c862d3361e576eb3ef0fe"

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
