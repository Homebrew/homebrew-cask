cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.16"
  sha256 arm:   "6bdfead5c0679941bb894077d2612637cc0e61d64058d130354ffd1a195b0541",
         intel: "e7837624ff9bacf5a060dfc21ea5c6ee8f822a15b302d60a3987e13aac7045c3"

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
