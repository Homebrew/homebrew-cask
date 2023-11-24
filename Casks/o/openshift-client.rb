cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.4"
  sha256 arm:   "812a6b1bef7da418bda75e6e81d5fcc3d9c1a1295c0c0c32b98a4ab806918abc",
         intel: "0d3a532b2f8f7b2aeb64dc99ed8fdfbed08a4010913813fa5267a8e1d20959ab"

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
