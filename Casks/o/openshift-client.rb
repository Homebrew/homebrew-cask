cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.14"
  sha256 arm:   "01f34360fde1255e3077340afac5c46a85a0ebae49c16368e0289a3f91cd8caf",
         intel: "841e9b8fce91ac93aa13f46c07a87b0564d72b6cbfa882ad7558e2a5ac278c82"

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
