cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.5"
  sha256 arm:   "372762372198d95b8aeef2ebe570c154ab6ab365eb0d304c0fec68ac866498e6",
         intel: "300233cab3514aec4a0f62ea7dee642f9f963bfafb544df9dee7e4b1fbb07700"

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
