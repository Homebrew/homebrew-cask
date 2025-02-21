cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.1"
  sha256 arm:   "e4c7f8151796f454f3c6dc05fc3d4f850349ee4eac448ffbead2b6e52308b0d1",
         intel: "b389840730f0d7711ce6afae2d42f387395d91fb4e5b8bb988942e792aaf141a"

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
