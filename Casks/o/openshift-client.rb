cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.13"
  sha256 arm:   "56ed3ad9861178472ea05098f6a86a68dd84d9537dfe17641f2b0daaa2cd72a4",
         intel: "f50d68d8db90287984d504d04598f02df7adbdfa208cfd76b7f93f2231b47f23"

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
