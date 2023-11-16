cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.3"
  sha256 arm:   "b04777b8a198e7adeb905de8cf0d2a26bc9e02070f7b278bfc3e7274bcce2b2c",
         intel: "d3961b10a22f3fad8f6538896fe4ea0dfa0a4ad96a26a992297856ac30587daf"

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
