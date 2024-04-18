cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.10"
  sha256 arm:   "78bd0e658c2aa16017619f10976a600418c159830805e4d597cb1d66558b6844",
         intel: "6efe45f6de41cfb7bfa7dce007ddce2a3654cfbf3b01dd3f0edd60265cf9301d"

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
