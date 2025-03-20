cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.6"
  sha256 arm:   "76e9fa50ac8adc74bb31384682230df6de48a46f68aee5df0e162a9ab6ca92ce",
         intel: "64c00e32f32ef3d6e3fef4c3b6b5a755c144b31a6b16bce6127a173a61e6ff3b"

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
