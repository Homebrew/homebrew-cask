cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.7"
  sha256 arm:   "7292b5046153799e3725697ab4c3b03739993b51d03671ae27f852bc4c7fadd8",
         intel: "ac5916eb47bf0e6ceba29ca1051a332e012e9d34714a9daeb971b5baaeaa1d47"

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
