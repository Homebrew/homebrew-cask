cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.0"
  sha256 arm:   "e76f44fb1e5c176daf37a3d1b9bfbf792817b764914f00b2b640dac2890ca527",
         intel: "415b6d77a39e70ddda3c91427bd9ab8c6edef161600a62719d4c40bf9b95115c"

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
